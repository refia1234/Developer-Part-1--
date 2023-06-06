public  class RankHandler {
    public string rankPrice(integer rank) {
        string prize ='';
        if (rank==1) {
            prize='Gold';
        }else if(rank==2){
            prize='Silver';
        }else if(rank==3){
            prize='Bronze';
        }else{
            if(rank<=10){
                prize='Iron';
            }else{
                prize='Alimunium';
            }
        }
        return prize;

    }
    public string rankPrizeSwitch(integer rank){
        string prize='';
        switch on rank{
            when 1{
                prize = 'Gold';
            }
            when 2 {
                prize = 'Silver';
            }
            when 3 {
                prize = 'Bronze';
            }
            when 5 {
                prize = 'Iron';
            }
            when else {
                prize = 'Alimunium';
            }
        }
        return prize;
    }
}
// integer, string, long,object-->switch on 