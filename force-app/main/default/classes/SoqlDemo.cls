public class SoqlDemo {
   public static void accountSoql_1() {
       List<Account> listAcc = [select id, name from account where name like '%A%'];
       system.debug('account list = ' + listAcc);
       system.debug('# of accounts = ' + listAcc.size());


       Account latestAcc = [select name, website from account order by createdDate desc limit 1];
       system.debug(latestAcc);

   }

   public static void accountSoql_2() {
    Account latestAcc = [select name, phone, AccountNumber from account order by createdDate desc limit 1];
    system.debug('latest account created is ' + latestAcc);
    
    id accid = latestAcc.id;
    string accName = latestAcc.Name;
    string accPhone = latestAcc.Phone;
    system.debug('acc name is ' + accName);
    system.debug('acc phone is ' + accPhone);
    system.debug('acc account number is ' + latestacc.AccountNumber);
   } 

   public static void accountSoql_3() {
       List<account> listAcc = [select id, name, phone, accountnumber, ShippingCity from account order by CreatedDate DESC];
       system.debug('all accounts ' + listAcc);
        //11 records
       for (account eachAccount : listAcc) {
           //1st record for the 1st iteration. 
           id accid = eachAccount.id;
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;
            system.debug('acc name is ' + accName);
            system.debug('acc phone is ' + accPhone);
            //will this work?
            string shippingAdd = eachAccount.ShippingCity;
            system.debug('acc account number is ' + eachAccount.AccountNumber);
            
            system.debug('-------------------------------');
           
       }
   }

   public static void soqlDemo_Filter() {
       string accNameFilter = 'Softinnovas';

       list<account> listAcc = [select name from account where name = :accNameFilter];
       system.debug(listAcc);
   }
}
