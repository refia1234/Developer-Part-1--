public class StudentDemo {
    string admissionNo;
    string studentName;
    Map<String, Decimal> subjectAndMarks;

    public StudentDemo(string admissionNo, string studentName, map<string, decimal> subjectAndMarks ){
        this.studentName=studentName;
        this.admissionNo =admissionNo;
        this.subjectAndMarks=subjectAndMarks;
    }
    // public void setName(string  studentName){
    //     this.studentName=studentName;
    // }
    public string getName(){
        return studentName;
    }
    // public void setadmissionNo(string admissionNo){
    //     this.admissionNo =admissionNo;
    // }
    public string getadmissionNo(){
        return admissionNo;
    }
    public set<string> getSubjects(){
        return subjectAndMarks.keySet();
    }
    public list<decimal>getMarks(){
        return subjectAndMarks.values();
    }
    public decimal getMarks( string sub){
        decimal mark=-1;
        if(subjectAndMarks.containsKey(sub)){
            mark=subjectAndMarks.get(sub);
        }else{
            system.debug(this.getName()+' did not study '+ sub);
        }
        return mark;
    }
    public decimal getTotalMarks(){
        decimal sum =0;
        for(decimal eachmark:subjectAndMarks.values() ){
            sum += eachmark;
        }
        return sum;
    }
    public decimal getAverageMarks(){
        return this.getTotalMarks()/subjectAndMarks.size();
    }
    public map<string , decimal> getSubjectAndMarksAboveAverage(){
        map<string ,decimal> newSubjectAndMarksAboveAverage= new map<string,decimal>();
        for(string eachstr :subjectAndMarks.keySet()){
            if(subjectAndMarks.get(eachstr)>this.getAverageMarks()){
                newSubjectAndMarksAboveAverage.put(eachstr,subjectAndMarks.get(eachstr));
            }
        }
             return newSubjectAndMarksAboveAverage;
    }
}