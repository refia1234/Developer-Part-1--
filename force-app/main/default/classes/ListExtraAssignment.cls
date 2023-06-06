public  class ListExtraAssignment {
    public static list<string> schoolsList(string medium) {

        list<string> mediumSchoolList = new list<string>();
        
        list<string> allSchoolList = new list<string>{'S1 English','S2 Turkish','S3 English','S4 Japanese','S5 English','S6 Turkish' };
       
        if(!allSchoolList.isEmpty()){
        
        for(string eachSchool: allSchoolList){
            if(eachSchool.contains(medium)){
                mediumSchoolList.add(eachSchool);
            }

        }
        }
        return mediumSchoolList;

    }
}