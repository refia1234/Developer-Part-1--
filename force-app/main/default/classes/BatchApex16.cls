public class BatchApex16 implements Database.Batchable<sObject>, Database.stateful {

    public integer skopSayisi=0;
    public integer recordSayisi=0;
   //Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..
    public Database.QueryLocator start(Database.BatchableContext BC) {

        return Database.getQueryLocator([select id,name,annualRevenue from account]);
        // tum accountlar getirilecek
    }

    public void execute(Database.BatchableContext BC, List<Account> scope) {
        skopSayisi++;
        recordSayisi+=scope.size();

        List<account> updateList = new List<account>();
        for(account acc: scope){
             // namelere update eklenecek
            acc.name+='updated';
            if(acc.annualRevenue==null){
                acc.annualRevenue=10000;
            }
            updateList.add(acc);
        }
        update updateList;  
        
    }
    public void finish(Database.BatchableContext BC) {

        // ID jobID= system.enqueueJob(new Queueable16first());
        // system.debug('queueable job id = '+jobID);
        system.enqueueJob(new Queueable16first());
        system.debug('yapilan execute islem sayisi = '+skopSayisi);
        system.debug('islem yapilan record sayisi = '+recordSayisi);
        System.debug('Isleminiz basariyla tamamlandi..');
        
    }

}