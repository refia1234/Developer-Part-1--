public class ConditionClass_Assignment {
    public string ifClassMethod(integer x) {
        string outputMonth = 'Not a valid Month';
        if(x==1){
            outputMonth='January';

        }else if (x==2){
            outputMonth='February';
        }

        return outputMonth;

    }
    public string caseMethod(string quarter){
        string message ='Enter a proper Month name';
        switch on quarter   {
            when 'January','February','March' {
                message='Quarter 1';
                
            }
            when else {
                message='Not a valid Quarter';
                
            }
        }
        return message;

    }
}