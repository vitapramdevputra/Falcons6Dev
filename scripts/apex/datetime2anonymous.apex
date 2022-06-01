DateTimeMethodsDemo2 dt = new DateTimeMethodsDemo2();
boolean lpCheck1 = dt.leapYearCheck(date.today());
system.debug('leap year check 1 ' + lpCheck1);
date dt1 = date.newInstance(2020, 01, 01);
boolean lpCheck2 = dt.leapYearCheck(dt1);
system.debug('leap year check 2 ' + lpCheck2);
