public class StringDemoClass {
    //return type of below method is void.
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex language.';

        //1. length
        //length is string's class method. Which returns INTEGER.
        integer lengthOfStr = sessionDescription.length();
        sessionDescription.length();
        system.debug(sessionDescription.length());

        system.debug('length of string is = ' + lengthOfStr);

        //2 upper case
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionInCaps);
        system.debug('original string = ' + sessionDescription);

        //3. contains
        boolean containsApex = sessionDescription.contains('apex');
        system.debug('has apex???? ' + containsApex);
        boolean containsApex3 = sessionDescription.contains('Apex');
        system.debug('has Apex???? ' + containsApex3);
        //3.a check salesforce
        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('has salesforce???? ' + containsSalesforce);

        //3.b check APEX
        boolean containsAPEX2 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('has APEX? ' + containsAPEX2);

        //3.b check APEX
        sessionDescription.containsIgnoreCase('APEX'); //this is valid.

        //4. 
        string apexx = 'apex';
        string ap = 'APEX';
        //equals check if two strings are same or not.
        //if same returns true.
        //string1.equals(string2)
        boolean apexCheck = apexx.equals(ap);
        system.debug('apex check ' + apexCheck);
    }
}
