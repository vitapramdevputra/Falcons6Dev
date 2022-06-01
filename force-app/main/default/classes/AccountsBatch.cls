public class AccountsBatch implements Database.Batchable<SObject>, database.stateful{
    public integer count = 0;
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, description, Active__c from account]);
        system.debug(q1);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        list<account> updateAccounts = new list<account>();
        for (account acc : scope) {
            if(acc.Active__c != 'No'){
                acc.Description += '...updated via BATCH apex!';
                updateAccounts.add(acc);
                count++;
            }
        }
        if(!updateAccounts.isEmpty()){
            system.debug('count in execute method: ' + count);
            update updateAccounts;
        }   
    }
    public void finish(Database.BatchableContext bc){
        //print how many records were updated in the entire batch execution.
        system.debug('done with updating ALL the ACCOUNTS');
        system.debug('total updated records = ' + count);
    }

}
