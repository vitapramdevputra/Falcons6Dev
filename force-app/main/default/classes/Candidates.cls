public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidate(){
        system.debug('Candidate name is ' + Name + '('+ gender +')');
        //STATIC members in NON-static methods --> ALLOWED.
        system.debug('company name is ' + CompanyName);
    }
    public static void printCandidateInfoSt() {
        System.debug('company name is ' + CompanyName);
        //Non-Static members in STATIC method -> NOT ALLOWED,
        //system.debug('name = ' + Name);//VALID???? NO.
    }
}
