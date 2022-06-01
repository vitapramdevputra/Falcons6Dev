@isTest
public with sharing class AccountsBatchTest {
    @isTest
    private static void testMethod1() {
        //START STEP 1: PREPARE DATA 
        list<account> listAcc = new list<account>();
        account acc = new account();
        acc.Name = 'TEST ACC 0';
        acc.AccountNumber = 'asci-1';
        acc.Active__c = 'Yes';
        listAcc.add(acc);

        for (Integer i = 1; i < 500; i++){
            account acc2 = new account();
            acc2.Name = 'TEST ACC'+i;
            acc2.AccountNumber = 'asci-1'+i;
            acc2.Active__c = 'Yes';
            listAcc.add(acc2);
        }
        system.debug('size of list ' + listAcc.size());

        if(!listAcc.isEmpty()){
            insert listAcc;
        }
        //END STEP 1
        //step 2
        test.startTest();
        AccountsBatch ab = new AccountsBatch();
        database.executeBatch(ab, 501);
        test.stopTest();

        //ASSERT
        list<account> accounts = [select id, description from account];
        for (account a : accounts) {
            system.assert(a.Description.containsIgnoreCase('batch'));
        }

    }
}
