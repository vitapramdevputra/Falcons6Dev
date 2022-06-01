@isTest
public with sharing class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
        list<account> accounts = new list<account>();
        for (Integer i = 0; i < 100; i++) {
            account a = new account(name = 'Test Account' + i, Phone='987654321');
            accounts.add(a);
        }
        insert accounts;
    }   
   @IsTest
   static void methodName(){
       list<account> accs = [select id, name from account];

       Test.startTest();
       AccountQueueableExample aq = new AccountQueueableExample(accs);
       system.enqueueJob(aq);
       Test.stopTest();
       
       integer count = [select count() from account where name like '%SI%'];
       system.assertEquals(100, count);
   }
}
