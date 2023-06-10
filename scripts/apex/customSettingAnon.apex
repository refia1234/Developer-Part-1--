Map<string, CountryCode__c> allCC = CountryCode__c.getAll();
system.debug(allCC);
CountryCode__c oneCountry = CountryCode__c.getInstance('Turkey');
system.debug(oneCountry);
system.debug('code of Turkey==> '+oneCountry.code__c);


for(string eachCountry : allCC.keySet()){

    system.debug(eachCountry+' country code is ' +allCC.get(eachCountry).code__c);

}