public class TriggerHandler {
    public static void createLead( list<lead> newTrigger){

        list<task> newTask = new List<Task>();
        string subject = customMain__c.getInstance().subject__c;
        string status = customMain__c.getInstance().status__c;
        string comments = customMain__c.getInstance().comments__c;
        boolean isCase = customMain__c.getInstance().caseTask__c;
        boolean isLead = customMain__c.getInstance().leadTask__c;

        if(isLead){
        for(Lead eachLead: newTrigger){
            task t = new task ();
            t.subject=subject;
            t.status=status;
            t.description = comments;
            t.activityDate = date.today().addDays(1);
            t.whoId= eachLead.id;
            

            newTask.add(t);
        }

        try{
    if(!newTask.isEmpty()){
        insert newTask;
    }
}catch (Exception e){

    string errorHelper = e.getMessage();
    sendErrorEmail(userInfo.getUserId(), errorHelper);   
   
}


    }
}


public static void createCase( list<case> newTrigger){

    list<task> newTask = new List<Task>();
    string subject = customMain__c.getInstance().subject__c;
    string status = customMain__c.getInstance().status__c;
    string comments = customMain__c.getInstance().comments__c;
    boolean isCase = customMain__c.getInstance().caseTask__c;
    boolean isLead = customMain__c.getInstance().leadTask__c;

    if(isCase){
    for(Case eachCase: newTrigger){
        task t = new task ();
        t.subject=subject;
        t.status=status;
        t.description = comments;
        t.activityDate = date.today().addDays(1);
        t.whatId= eachCase.id;
    



        newTask.add(t);
    }

    try{
if(!newTask.isEmpty()){
    insert newTask;
}
}catch (Exception e){

string errorHelper = e.getMessage();
sendErrorEmail(userInfo.getUserId(), errorHelper);   

}


}
}

private static void sendErrorEmail (Id userId, string errorHelper){

    User loginId = [select email from user where id=: userId limit 1];
    Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
    email.setToAddresses(new List<string>{loginId.Email});
    email.setSubject('Error Creating Default Tasks');
    email.setPlainTextBody(errorHelper);

    Messaging.sendEmail(new Messaging.singleEmailMessage[] {email});
}



}