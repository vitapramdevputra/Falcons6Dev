public class DmlDemo2 {
   public static void dmlMultipleRecordUpdate_right() {
       List<Account> listAcc = [select id, name, Description from account order by CreatedDate limit 150];
    
       list<account> updateAccounts = new list<account>();

       for (account acc : listAcc) {
           acc.Name += ' vB';
           acc.Description = 'Update via bulk DML';
           updateAccounts.add(acc);
       }
       if(!updateAccounts.isEmpty()){
           update updateAccounts;
       }

   }
}
