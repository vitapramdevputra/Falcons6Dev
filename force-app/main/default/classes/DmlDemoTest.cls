@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> listAcc = [select id, name from account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @istest
    private static void dmlDemoUpdate2Test() {
        Account acc = new account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlUpdateDemo_2();
        

        list<contact> listCnt = [select id, name from contact];
        system.assertEquals(1, listCnt.size());
        system.assertEquals('Biden', listCnt[0].Name);
    }
}
