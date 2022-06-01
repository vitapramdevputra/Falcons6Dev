public with sharing class AccountUpdateHelper {
    @invocableMethod
   public static void updateAccountWebsite(list<id> accIds) {
       list<account> accountsToUpdate = new list<account>();

       list<account> accounts = [select id, name, website from account where id in :accIds];

       for (account eachAcc : accounts) {
           eachAcc.Website = 'www.softinnovas.com';
           accountsToUpdate.add(eachAcc);
       }
       if (!accountsToUpdate.isEmpty()) {
           update accountsToUpdate;
       }
   }
}
