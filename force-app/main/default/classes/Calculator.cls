public class Calculator {
    public static void welcomeMessage(){
        system.debug('welcome to apex calC');
    }
    public static void printNewMessage(string msg){
        //use parameter variable name inside the method.
        system.debug(msg);
    }

    public static void printNewMessage2(string msg, Date dt){
        system.debug(msg);
        system.debug(dt);
    }
    //add method with 2 params
    public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    //add method with 3 params
    public static integer add(integer a, integer b, integer c){
        return a+b+c;
    }
    public static integer add(List<integer> intList) {
        integer sum = 0;
        //10,15,20
        // sum = sum + 10;
        // sum = sum + 15;
        // sum = sum + 20;
        for (integer eachInt : intList) {
            system.debug('eachInt - ' + eachInt);
            sum += eachInt;
            system.debug('sum...' + sum);
        }
        return sum;
    }

}
