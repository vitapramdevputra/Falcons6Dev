public class ListDemo {
    public static string candidatesList(integer indx) {
        list<string> listCandidates = new list<string>();
        listCandidates.add('Marc');//0
        listCandidates.add('Elon');//1
        listCandidates.add('Bill');//2
        listCandidates.add('Marc');//3
        system.debug('candidates are ' + listCandidates);
        string retrnString = '';
        if (indx >=0 && indx < listCandidates.size()) {
            retrnString = listCandidates[indx];
        } else {
            retrnString = 'No such value found';
        }
        return retrnString;
    }

    public static void randomIntegerList() {
        list<integer> listInteger = new list<integer>();
        listInteger.add(10);//0
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(15);//4

        //get index 3 value.
        integer index3value = listInteger.get(3);
        integer index3value2 = listInteger[3];
        
        system.debug('list of random integers ' + listInteger);
        system.debug('value at index 3 is ' + index3value2);
    }

    public static void allCats() {
        cat falconsCat = new cat('fluffykins', 'white');
        cat vitapCat = new cat('Simba', 'brown');

        List<cat> cats = new list<cat>();
        cats.add(falconsCat);
        cats.add(vitapCat);
        system.debug('all cats are ' + cats);
    }

    public static void allCars() {
        Car lm = new car();
        lm.carColor = 'red';
        car bm = new car();
        bm.carColor = 'gray';

        list<car> cars = new list<car>();
        cars.add(lm);
        cars.add(bm);
        system.debug(cars);
    }

    public static void iterateIntegerList() {
        List<integer> listInteger = new list<integer>();
        listInteger.add(10);//0
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(16);//4
        for (integer eachInteger : listInteger) {
            system.debug(eachInteger);
        }
    }
}
