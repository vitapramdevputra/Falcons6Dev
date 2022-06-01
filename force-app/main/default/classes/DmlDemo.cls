public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        acc.Site = 'www.Softinnovas.com';
        acc.Description = 'Salesforce Bootcamp';

        insert acc;
        system.debug(acc);
    }

    public static void dmlInsertDemo_cstmObj() {
        Salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'Teach DML to FALCONS';
        sp.description__c = 'All 40% are great learners';
        insert sp;
    }

    public static void dmlUpdateDemo_1() {
        Account acc = new account();
        acc.Name = 'S';
        insert acc;
        system.debug('inserted ' + acc);
        acc.Name = 'Salesforce Inc.';
        update acc;
        system.debug('updated ' + acc);
    }

    public static void dmlUpdateDemo_3() {
        account acc = [select name from account where name = 'SoftInnovas' order by CreatedDate desc limit 1];
        acc.Name = 'SoftInnovas Inc.';

        update acc;
        system.debug('updated acc ' + acc);

    }
    public static void dmlUpdateDemo_2() {
        account acc = [select name from account where name = 'SoftInnovas Inc.' limit 1];

        system.debug('acc id is ' + acc.id);

        //create a contact for this account
        contact cnt = new contact();
        cnt.lastname = 'Biden';
        //accountId is contact's field
        //relationship field.
        //accepts only account's ID.
        cnt.AccountId = acc.id;

        insert cnt;
    }

    public static void dmlMultipleRecordInsert_right() {
        list<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.Name = 'bulk acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.Name = 'bulk acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.Name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }

    public static void dmlMultipleRecordInsert2_right() {
        list<account> listAcc = new list<account>();

        account acc = new account();
        acc.Name = 'SoftInnovas 30-Apr22 v0';
        acc.AccountNumber = 'asci-1';
        acc.Active__c = 'Yes';
        listAcc.add(acc);

        for (Integer i = 1; i < 4; i++){
            account acc2 = new account();
            acc2.Name = 'SoftInnovas 30-Apr22 v'+i;
            acc2.AccountNumber = 'asci-1'+i;
            acc2.Active__c = 'Yes';
            listAcc.add(acc2);
        }
        system.debug('size of list ' + listAcc.size());

        if(!listAcc.isEmpty()){
            insert listAcc;
        }

    }
}
