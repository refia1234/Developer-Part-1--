trigger triggerLead on LEAD (before insert, after insert) {

    if(trigger.isInsert && trigger.isAfter){
        TriggerHandler.createLead(trigger.new);
    }

}