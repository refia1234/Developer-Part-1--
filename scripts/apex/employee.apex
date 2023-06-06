Employee newEmp = new Employee();
newEmp.setName('walter white');
newEmp.setSalary(15000);

string newEmpName= newEmp.getName();
decimal newEmpSalary=newEmp.getSalary();
system.debug(newEmpName+' salary is '+newEmpSalary);

Employee newEmp2= new Employee();
newEmp2.setName('Jesse Pink');
newEmp2.setSalary(60000);
string newEmp2Name= newEmp2.getName();
decimal newEmp2Salary=newEmp2.getSalary();
system.debug(newEmp2Name+' salary is '+newEmp2Salary);