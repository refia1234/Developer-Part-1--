public class CCar {
        public string carNumber;
        public string name;
        integer mfgYear;
        string color;
        decimal price;
        public void details(){
            system.debug('Car Number  ' + carNumber);
            system.debug('Car Name is ' + name);
            system.debug('Manufacturing year ' + mfgYear);
            system.debug('color of car is ' +color);
            system.debug('price is ' + price);
            printCarAge();
        }
        public CCar(){
            system.debug('New car is created, constructor called automatically');
            mfgYear= 2023;
        }
        public CCar(string nm){
            name = nm;
            mfgYear =2023;
        }
        public CCar(string nm, string carNum,string clr, integer yr, decimal pc){
            name=nm;
            carnumber= carnum;
            color= clr;
            mfgYear= yr;
            price= pc;
        }
        private void printCarAge(){
            integer currentYear= date.today().year();
            system.debug('Car Age is ' + (currentYear - mfgYear));
        }
    
}