public class Student {
  string firstName;
  string lastName;
  integer classYear;
  integer marks;
  string majorStream;

  public void setFirstName(string firstName){
    this.firstName=firstName;

  }
  public void setLastName(string lastName){
    this.lastName=lastName;
  }
  public void setClassYear(integer classYear){

    integer year1= date.today().year();
    if(classYear<=year1 && classYear>(year1-100)){
        this.classYear=classYear;
    }else{
        classYear=0;
        system.debug('no such class year exists for us');
    }


  }
  public void setMarks(integer marks ){
    if(marks<0 || marks>100){
        marks=-1;
        system.debug('please give proper marks this no joke');
    }else{
        this.marks=marks;
    }

 }
 public void setMajorStream(string majorStream ){
   if(majorStream.length()>2){
     this.majorStream=majorStream;
     }else{
        majorStream='NA';
        system.debug('there is no such major or stream in our uni');
     }
}
public string generateReport(){
    string grade;
    if(marks>=90){
        grade='A';
    }else if(marks>=80){
        grade='B';
    }else if(marks>=70){
        grade='C';
    }else if(marks>=60){
      grade='D';
    }else{
      grade='F';
    }

    return grade;
}
}