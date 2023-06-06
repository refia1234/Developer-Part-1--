public class StudentMarkSheet {

    string firstName;
    string lastName;
    integer math;
    integer eng;
    integer ch;
    static string schoolName; 
    public StudentMarkSheet(){
        schoolName='Salesforce Public School';
    }
    public void setFirstName(string name){
        this.firstName=name;
    }
    public string getFirstName(){
        return this.firstName;
    }
    public void setLastName(string lName){
        this.lastName=lName;
    }
    public string getLastName(){
        return this.lastName;
    }
    public void setMarks(integer mathematics,integer english,integer chemistry){
        this.math=mathematics;
        this.eng=english;
        this.ch=chemistry;
    }
    public void showMarkSheet(){
        system.debug('Student\'s name is '+firstName+' '+lastName+' and student\'s school name is '+schoolName+', Mathematic\'s mark:'+math+', English\'s mark:'+eng+', Chemistry\'s mark: '+ch);

        integer sum = math+eng+ch;
        if(sum>=120){
        system.debug('You are passed :)');
        }else{
        system.debug('You need to study more!!');
        }
        system.debug('______________________________________________');
}
}