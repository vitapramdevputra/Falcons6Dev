public class Cat {
    public string name;
    public string color;
    public Cat() {
        system.debug('constructor called.');
    }
    public Cat(string n, string c){
        this.name = n;
        this.color = c;
        sleeping();
    }

    public void sleeping(){
        system.debug(name + ' is sleeping');
    }
}
