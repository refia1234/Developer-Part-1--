public class TicketBooking {
    //we want to keep track of number of tickets booked.
    string name; 
    public integer numberOfTickets;
    public static integer ticketsBooked=0;

    public void bookTickets(string name, integer numberOfTickets){
        this.name=name;
        this.numberOfTickets=numberOfTickets;
    }
   
}