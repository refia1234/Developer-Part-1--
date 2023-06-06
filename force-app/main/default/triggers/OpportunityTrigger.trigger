trigger OpportunityTrigger on opportunity (before insert,before update, after insert, after update) {

    if(trigger.isUpdate && trigger.isBefore){
        OpportunityTriggerHandler.updateOpp(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);

    }

}