
public class DeleteOppBatch implements Database.Batchable<sObject>, Database.Stateful {

    public integer count=0;


    public Database.QueryLocator start(Database.BatchableContext BC) {

        return Database.getQueryLocator([select id, name, closeDate from opportunity where stageName='Closed Lost']);
    }

    public void execute(Database.BatchableContext BC, List<Opportunity> scope) {
        count+=scope.size();
        delete scope;
        
        
    }

    public void finish(Database.BatchableContext BC) {

        system.debug('Total '+ count +' records deleted. ');
    }
}


