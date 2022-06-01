trigger CaseTrigger on Case (before insert, before update) {
    if(trigger.isInsert){
        system.debug('before insert trigger called.');
    }
    if(trigger.isUpdate){
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('# of times trigger executed: ' + CaseTriggerHandler.countTriggerExecution);

        CaseTriggerHandler.countRecordsUpdate += trigger.size;
        system.debug('# of records updated = ' + CaseTriggerHandler.countRecordsUpdate);
    }
    
}