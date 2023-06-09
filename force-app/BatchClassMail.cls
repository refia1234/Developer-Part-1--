public class BatchClassMail implements Database.Batchable<sObject>, Database.stateful {
    //Soru : Account recordlarinin name ler icindeki 'updated' kelimelerini cikartip islem bittiginde bir mail ile kac recordda islem yapildigini, islemin ne zaman bittigini, kac defa execute edildigini, bunlardan kac tanesinin basarili oldugunu kac tanesinin basarisiz oldugunu 'System Administrator' olan userlara bildirin..
     public integer recordSayisi = 0;
     public Database.QueryLocator start(Database.BatchableContext BC) {
         //query:name icinde 'updated' kelimesi olan account recordlari..
         return Database.getQueryLocator([select id, name from account where name like '%updated%']);
     }
 
     public void execute(Database.BatchableContext BC, List<Account> scope) {
         if (!scope.isEmpty()) {
             recordSayisi += scope.size();
             for (account acc : scope) {
                 //recordSayisi++;
                 acc.name = acc.name.remove('updated');
             }
             update scope;
         }
     }
 
     public void finish(Database.BatchableContext BC) {

        system.debug('finish method');

        AsyncApexJob a = [select id, status, jobType, numberOfErrors, jobItemsProcessed, totalJobItems, CompletedDate, ExtendedStatus from AsyncApexJob where id =:BC.getJobId()];

        List<user> userList = [select id, email, isActive from user where profile.name='System Administrator' and isActive = true];

        for(user u : userList){
            messaging.singleEmailMessage mail = new messaging.singleEmailMessage();
            mail.setTargetObjectId(u.id);
            mail.setSaveAsActivity(false);
            mail.setSubject('Account namelerde degisiklik '+ a.status);

            mail.setPlainTextBody('The batch apex job completed on : '+ a.CompletedDate + ',\n\n'+'Job Status : '+ a.status + ',\n' + 'Ttotal job items processed : ' + a.totalJobItems + ',\n' + 'Number of job items processed : ' + a.jobItemsProcessed + ',\n' +'Number of Failures : ' + a.numberOfErrors + ',\n' + 'Updated edilen recordlarin sayisi : ' + recordSayisi );

            Messaging.sendEmail(new Messaging.singleEmailMessage[] {mail});
        }






     }
 
 }