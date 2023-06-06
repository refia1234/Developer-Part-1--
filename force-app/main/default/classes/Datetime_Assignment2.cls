public class Datetime_Assignment2 {
    public void diffofDate() {
        date todayDate = date.today();
        date tomorrowDate = todayDate.addDays(1);
        integer getDays = todayDate.daysBetween(tomorrowDate);

    }
    public void timeCheck(){
        datetime tomorrowDatetime = date.newInstance(tomorrowDate,07);
        datetime var10DaysDatetime =date.newInstance(todayDate+10,09);
        long varDatetimeLong = 12339874361L;
        datetime get7Days = tomorrowDate.getDays(7);


    }
}