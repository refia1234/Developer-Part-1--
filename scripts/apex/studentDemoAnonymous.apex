map<string, decimal> tt =new map<string, decimal>{'math'=>75.5, 'physics' =>56.0, 'english'=> 80.5, 'chemistry'=>70.0,'computer'=> 58.5};
StudentDemo student1= new StudentDemo('1001','Peter Parker',tt);
system.debug(student1.getName());
system.debug(student1.getadmissionNo());
system.debug(student1.getSubjects());
system.debug(student1.getMarks('english'));
system.debug(student1.getMarks('physics'));
system.debug(student1.getMarks('hindi'));
system.debug(student1.getTotalMarks());
system.debug(student1.getAverageMarks());
system.debug('Above average subject and marks: '+student1.getSubjectAndMarksAboveAverage());



TestConstructor object1 = new testConstructor('beyza');
object1.test();