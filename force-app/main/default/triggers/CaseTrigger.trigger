trigger CaseTrigger on CASE (before insert, after insert) {

    if(trigger.isInsert && trigger.isAfter){
        TriggerCaseHandler.createCase(trigger.new);
    }

}