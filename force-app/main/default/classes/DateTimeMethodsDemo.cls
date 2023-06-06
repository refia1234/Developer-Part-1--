public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthdate = date.newInstance(1997,03,02);
        date todayDate = date.today();
        integer ageInMonths = birthdate.monthsBetween(todayDate);
        system.debug(ageInMonths);
    }
    public void calculateAgeInDays(){
        date birthDate= date.newInstance(1997,03,02);
        date todayDate2= date.today();
        integer ageInDays= birthDate.daysBetween(todayDate2);
        system.debug(ageInDays);
    }
    public void printSubscriptionEndDate(){
        Date today1 = Date.today();
        date subscriptionEndDate = today1.addDays(1000);
        system.debug('Subscription\'s end date = '+subscriptionEndDate);

        integer endDateYear=subscriptionEndDate.year();
        system.debug('Subscription end date\'s year is '+endDateYear);
       
        integer endDateMonth=subscriptionEndDate.month();
        system.debug('Subscription end date\'s month is '+endDateMonth);

    }
    public void printOfferEndDateTime(){
        datetime offerStart=datetime.now();
        datetime offerEnd=offerStart.addHours(51);
        system.debug('Offer\'s end date and time --> '+offerEnd);
        system.debug('Offer\'s end date is '+offerEnd.date());

    }

}