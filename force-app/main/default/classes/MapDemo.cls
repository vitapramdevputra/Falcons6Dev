public class MapDemo {
    //returns monthName from month number
    //example: 2 --> February
    public static string retrieveMonth(integer m){
        string monthName = '';
        map<Integer, string> monthMap = new map<integer, string>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');

        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');

        monthMap.put(9, 'September');
        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        if(monthMap.containsKey(m)){
            monthName = monthMap.get(m);
        } else {
            monthName = 'No SUCH month exists. Please Behave!';
        }
        return monthName;
    }
}
