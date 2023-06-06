public class SchedulableOpp implements Schedulable {
    public void execute (SchedulableContext sc){
        DeleteOppBatch practiseOpp = new DeleteOppBatch();
        Database.executeBatch(practiseOpp,5);

    }
}