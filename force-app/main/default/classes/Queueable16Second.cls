public class Queueable16Second implements Queueable{
     List<contact> conList = [select id, name from contact where accountId != null and account.AnnualRevenue=10000];
    public void execute(QueueableContext context){
        System.debug('Queuable second calisti..');
        
        for (contact con : conList) {
            con.leadSource='Partner Referral';
        }
        update conList;
}
}