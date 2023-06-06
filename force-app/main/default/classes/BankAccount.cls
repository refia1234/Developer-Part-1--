public class BankAccount {
    //data members
    // or class variables

    public string accountNumber;
    private decimal balance;
    private string accountHolderName;
    string bankName;

    //deposit -- methods

    // withdraw 
public void printDetails(){
    datetime printTime = datetime.now();
    system.debug(printTime);
system.debug(accountHolderName);
system.debug(balance);
}

public BankAccount(){
    printBalance();
balance=0;
}

public BankAccount(string accNumber, decimal bal, string accHolderName, string bName){
    accountNumber=accNumber;
    system.debug(accNumber);
    system.debug(bal);
    system.debug(accHolderName);
    system.debug(bName);
}

private void printBalance(){
    system.debug('balance is ' + balance);
}
}