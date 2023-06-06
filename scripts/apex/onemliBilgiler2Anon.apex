List<string> shoppingList= new List<string>{'house','car','bitcoin','dyson','karaca'};
system.debug(shoppingList);
shoppingList.add('karaca');
system.debug(shoppingList);

system.debug(shoppingList);
integer x =shoppingList.size();
system.debug(x);





for (string alisveris: shoppingList){
    system.debug(alisveris);  
}
     integer size = shoppingList.size();
    

        for(integer i=0; i<size; i++){

        string liste = shoppingList[i].toUpperCase();
        system.debug(liste);

        shoppingList[i]=shoppingList[i].toLowerCase();
        system.debug(shoppingList);

    }

    List<Account> hesaplar = [SELECT Id, Name, Industry FROM Account LIMIT 10];
for (Account hesap : hesaplar) {
    System.debug(hesap.id+' '+hesap.Name + ' - ' + hesap.Industry);
}


Map<String, Integer> myMap = new Map<String, Integer>{'apple' => 1, 'banana' => 2, 'cherry' => 3};
for(String fruit : myMap.keySet()){
  Integer quantity = myMap.get(fruit);
  System.debug('There are ' + quantity + ' ' + fruit + 's.');
}



      





