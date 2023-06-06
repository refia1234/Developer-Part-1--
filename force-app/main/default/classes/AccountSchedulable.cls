public class AccountSchedulable implements Schedulable {
public void execute(SchedulableContext sc){
    AccountsBatch ab = new AccountsBatch();
    Id jobId = database.executeBatch(ab, 30);
    //find all cases, and if the case is orphan (no related account), then set default account to Softinnovas
    CasesBatch cb = new CasesBatch();
    Id batchId = Database.executeBatch(cb, 50);
}
}
