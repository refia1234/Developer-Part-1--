trigger TaskTrigger on Task (before insert, before delete) {

    if(trigger.isBefore && trigger.isDelete){
        TaskDeleteTriggerHandler.checkUser(trigger.old);
    }

}