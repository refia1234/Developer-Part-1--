public  class Collections_Assignment {
    public static void listMethods() {
        List<string> listOfDays = new List<string>{'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
        listOfDays.add('Sunday');
        system.debug(listOfDays);
        list<string> l1 = new list<string>{'Volvo','Tesla','Audi','Mercedes'};
        system.debug(l1);
        system.debug('l1 clone-->'+l1.clone());
        boolean trueFalse= listOfDays.equals(l1);
        system.debug('list of days equal list of car: '+trueFalse);
        listOfDays.addAll(l1);
        system.debug('new list-->'+listOfDays);
        listOfdays.sort();
        system.debug('alphabetic list-->'+listOfdays);
        integer listSize = listOfDays.size();
        system.debug('list size='+listSize);
        string firstElement= listOfDays.get(0);
        string endElement=listOfDays.get(listSize-1);
        string optional = listOfDays[4];
        system.debug('index=0,  element:'+firstElement);
        system.debug('index=(size-1), element:'+endElement);
        system.debug(optional);
        boolean check = listOfDays.contains('tuesday');
        system.debug('does the list include tuesday? : '+check);
        integer result= listOfdays.indexOf('thu');
        system.debug('index number of thu: '+result);
        integer result1=listOfDays.indexOf('Thursday');
        system.debug('index number of Thursday: '+result1);
        listOfdays.remove(3);
        system.debug('The list after removing the element with index 3 '+listOfDays);
        listOfdays.clear();
        system.debug(listOfDays);
        boolean isListEmpty= listOfDays.isEmpty();
        system.debug('after clear --> is list empty? : '+isListEmpty);


    }

    
}