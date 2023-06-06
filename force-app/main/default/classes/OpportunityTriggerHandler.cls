public class OpportunityTriggerHandler {
   public static void updateOpp(list<opportunity> triggerNew, list<opportunity> triggerOld, map<id,opportunity> newMap, map<id,opportunity> oldMap){

    for (opportunity eachOpp: triggerNew){
        if((eachOpp.stageName!= oldMap.get(eachOpp.id).stageName) && eachOpp.stageName=='Closed Lost'){
            eachOpp.description='Cok uzgunuz';

        }else if((eachOpp.stageName!= oldMap.get(eachOpp.id).stageName) && eachOpp.stageName=='Closed Won'){
            eachOpp.description='Yasasin';
        }else if((eachOpp.stageName!= oldMap.get(eachOpp.id).stageName) && eachOpp.stageName=='Prospecting'){
            eachOpp.stageName.addError('Izin verme');
    }


   }
}

public static void updateAmount(list<opportunity> newTrigger, list<opportunity> oldTrigger, map<id,opportunity> mapNew, map<id,opportunity> mapOld){

    decimal sum=0;


    for(opportunity eachOpp: newTrigger){
        if(eachOpp.amount != mapOld.get(eachOpp.id).amount && (eachOpp.accountId != null)){
            sum+=eachOpp.amount;
            mapNew.get(eachOpp.accountId).description = ' abcdefg '+sum+' dollar ';
        
    }
}


}
}