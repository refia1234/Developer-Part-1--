@isTest
public class IfAndForLoopTest {
    @isTest
    private static void phoneTest(){
        
        IfAndForLoop ifl = new IfAndForLoop();
        string msg = ifl.phone('2122168765');
        assert.isNotNull(msg);
        string msg2 = ifl.phone('2162168765');
        assert.isNotNull(msg2);
        string msg3 = ifl.phone('3122168765');
        assert.isNotNull(msg3);
        string msg4 = ifl.phone('21221687655');
        assert.isNotNull(msg4);

    }
    @isTest
    private static void sumTest(){
       
        IfAndForLoop ifl = new IfAndForLoop();
        ifl.sum(7);

    }
    @isTest
    private static void helloTest(){
        
        IfAndForLoop ifl = new IfAndForLoop();
        string str= ifl.hello('slm');
        assert.isNotNull(str);
    
    }
}