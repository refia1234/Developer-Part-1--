public class SchedulableTask implements Schedulable {
    public void execute(SchedulableContext cs){
        CaseCreate ct = new CaseCreate();
        database.executeBatch (ct,5);

    }
}