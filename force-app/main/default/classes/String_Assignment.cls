public class String_Assignment {
    public void stringAssignment() {
string localString = 'Thanks for the session on the string';
integer a = localString.length();
string b = localString.toUpperCase();
boolean checkSession = localString.contains('session');
boolean checkSession2 = localString.contains('sessions');
boolean checkSession3 = localString.containsIgnoreCase('SESSION');
system.debug(localString);
system.debug(a);
system.debug(b);
system.debug(checkSession);
system.debug(checkSession2);
system.debug(checkSession3);

    }
}