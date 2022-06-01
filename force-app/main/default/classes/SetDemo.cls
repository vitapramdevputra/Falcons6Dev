public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        system.debug('set of cities ' + cities);
    }

    public static void randomInteger(){
         Set<integer> setInteger = new Set<integer>();
        setInteger.add(10);
        setInteger.add(15);
        setInteger.add(21);
        setInteger.add(15);
        setInteger.add(10);
        setInteger.add(15);
        system.debug('set of random integers ' + setInteger);
    }

    public static set<integer> setFromList(list<integer> intList) {
        Set<integer> intSet = new Set<integer>();
        intSet.addAll(intList);
        return intSet;
    }

    public static set<string> capitalizeSet(set<string> setString) {
        Set<string> upperCaseSet = new Set<string>();
        
        for (string eachString : setString) {
            string tempStr = eachString.toUpperCase();
            upperCaseSet.add(tempStr);
        }

        return upperCaseSet;
    }
}
