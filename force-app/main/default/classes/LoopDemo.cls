public class LoopDemo {
    public void print_int_while(){
        integer count = 1;
        while (count <=25) {
            system.debug(count);
            count++;
        }
    }

    public void print_N_numbers(integer n){
        for (Integer i = 0; i < n; i++) {
            system.debug(i);
        }
    }

    public void print_N_numbers_2(integer n){
        string s = '';
        for (Integer i = 0; i < n; i++) {
            s += string.valueOf(i) + ',';
        }
        //s = '1,2,3,4,5,';
        system.debug('print 1 to N: ' + s);
    }

    public Integer print_sum_N_numbers(integer n){
        integer sum = 0;
        for (Integer i = 0; i <= n; i++) {
            sum += i;
        }
        system.debug('summation is ' + sum);
        return sum;
    }
}
