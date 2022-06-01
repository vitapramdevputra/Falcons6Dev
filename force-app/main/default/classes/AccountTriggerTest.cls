@isTest
public class AccountTriggerTest {
    @isTest
    private static void testMethod1() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';
        acc1.Active__c = 'Yes';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';
        acc2.Active__c = 'No';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';
        acc3.Active__c = 'No';

        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        for (account acc : listAcc) {
            //acc.Description = 'updated in tests';
            acc.Active__c = 'Yes';
        }
        update listAcc;

        //check here if Description is updated to 'Account is now Active. Enjoy!'
        list<account> accounts = [select id, name, description from account];
        system.assertEquals('Account is now active. Enjoy!', accounts[1].Description);
    }
    @isTest
    private static void testMethod2() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        list<contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            Contact c = new contact();
            c.LastName = 'Test SOQL';
            if (i < 100) {
                c.accountid = acc1.id;
            } else if (i < 200) {
                c.accountid = acc2.id;
            } else if(i < 300){
                c.accountid = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;

        for (account acc : listAcc) {
            acc.vip__c = true;
        }
        update listAcc;

        List<contact> contacts = [select id, name, vip__c from contact];
        for (contact c : contacts) {
            system.assertEquals(true, c.vip__c);
        }
       
    }
}
