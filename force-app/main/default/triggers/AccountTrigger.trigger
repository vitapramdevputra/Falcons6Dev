trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isBefore){
        system.debug('before insert/update trigger called');
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        system.debug('before insert/update trigger end.');
        
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
    /*if(trigger.isAfter && trigger.isUpdate){

        map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;

        set<id> setOfAccIds = newAccMap.keySet();
        integer countWebsiteUpdated = 0;
        for(ID eachId : setOfAccIds){
            //get old account
            account oldAcc = oldAccMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            //get new account
            account newAcc = newAccMap.get(eachId);
            string newWebsite = newAcc.Website;

            if(oldWebsite != newWebsite){
                //website is CHANGED
                system.debug('For account ' + newAcc.Name + ', new WEBSITE is ' + newWebsite);
                countWebsiteUpdated++;
            }

        }
        system.debug('# of account website updaetd = ' + countWebsiteUpdated);
    }
    */
    
    /*if(trigger.isAfter && trigger.isUpdate){
        map<id, account> newAccMap = trigger.newMap;
        map<id, account> oldAccMap = trigger.oldMap;

        set<id> setOfAccIds = newAccMap.keySet();
        
        for(ID eachId: setOfAccIds){
            system.debug('==============');
            system.debug('each id = ' + eachId);

            Account newAccount = newAccmap.get(eachId);
            system.debug('New account name = ' + newAccount.Name);
            
            Account oldAccount = oldAccmap.get(eachId);
            system.debug('Old account name = ' + oldAccount.Name);
        }
    }

*/


    /*
    map<id, account> trgNewMap = trigger.newMap;
    map<id, account> trgOldMap = trigger.oldMap;

    if(trigger.isBefore &&  trigger.isInsert){
        system.debug('=======BEFORE INSERT=========');
        system.debug('Before insert OLD MAP = ' + trgOldMap);
        system.debug('Before insert NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isInsert){
        system.debug('=======AFTER INSERT=========');
        system.debug('AFter insert OLD MAP = ' + trgOldMap);
        system.debug('AFter insert NEW MAP = ' + trgNEWMap);
    }

    if(trigger.isBefore &&  trigger.isUpdate){
        system.debug('=======BEFORE UPDATE=========');
        system.debug('Before update OLD MAP = ' + trgOldMap);
        system.debug('Before update NEW MAP = ' + trgNEWMap);
    }
    if(trigger.isAfter &&  trigger.isUpdate){
        system.debug('=======AFTER UPDATE=========');
        system.debug('AFter update OLD MAP = ' + trgOldMap);
        system.debug('AFter update NEW MAP = ' + trgNEWMap);
    }



/*
    if(trigger.isAfter){
        if(trigger.isUpdate){
            List<account> oldAccounts = trigger.old;
            List<account> newAccounts = trigger.new;

            for(account oldAcc: oldaccounts){
                system.debug('old acc.id = ' + oldAcc.id + ', old acc name = ' + oldAcc.Name);
            }
            for(account newAcc: newaccounts){
                system.debug('new acc.id = ' + newAcc.id + ', new acc name = ' + newAcc.Name);
            }
        }
    }
    */


      /*
    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.old before insert = ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('trigger.old after insert = ' + trigger.old);
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.old before update = ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('trigger.old after update = ' + trigger.old);
    }
    
     /*
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('trigger.new before update = ' + trigger.new);
        list<account> newAccounts = trigger.new;
        for (account acc :  newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
        }
    }
    if (trigger.isAfter && trigger.isUpdate) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after update = ' + trigger.new);
        for (account acc :  trigger.new) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name + ', acc modified date = ' + acc.LastModifiedDate);
        }
    }

    if(trigger.isBefore && trigger.isInsert){
        system.debug('trigger.new before insert = ' + trigger.new);
    }
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);
    }
    */


    /*
    if (trigger.isInsert && trigger.isAfter) {
        //trigger.new -> record(s) which were responsible for firing the trigger
        system.debug('trigger.new after insert = ' + trigger.new);

        list<account> newAccounts = trigger.new;

        system.debug('total account inserted = ' + newaccounts.size());
        for (account acc : newAccounts) {
            system.debug('accout id is = ' + acc.Id + ', account name is ' + acc.Name);
        }
    }*/


    /*
    system.debug('---------START------------');
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    if (Trigger.isInsert && Trigger.isBefore) {
        system.debug('before insert trigger fired');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        system.debug('after insert trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        system.debug('before update trigger fired');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        system.debug('after update trigger fired');
    }
    system.debug('---------END------------');
    */
}