List<integer> listInteger = new list<integer>();
listInteger.add(10);//0
listInteger.add(15);//1
listInteger.add(21);//2
listInteger.add(15);//3
listInteger.add(16);//4
integer listSum = Calculator.add(listInteger);
system.debug('sum of list elements ' + listSum);

integer sum1 = Calculator.add(15,15);
system.debug(sum1);

integer sum2 = Calculator.add(10,15,25);
system.debug(sum2);

List<integer> listInteger = new list<integer>();
listInteger.add(104);//0
listInteger.add(815);//1
listInteger.add(281);//2
listInteger.add(155);//3
listInteger.add(17896);//4
integer listSum = Calculator.add(listInteger);
system.debug('sum of list elements ' + listSum);



/*
Calculator c = new Calculator();
integer sum11 = c.add(10,15);




system.debug('sum 11 = ' + sum11);

integer sum22 = c.add(15, 15, 15);
system.debug('sum 22 = ' + sum22);


//c.welcomeMessage();
//c.printNewMessage('this is new age calc.'); //we are passing string. 


integer sum2 = c.add(100,155);
system.debug('sum 2 = ' + sum2);
integer finalSum = c.add(sum1, sum2);
system.debug('final sum = ' + finalSum);

string message = 'this is a new msg for calc class';
c.printNewMessage(message);//we are still passing a string.

c.printNewMessage2('this is a meesage', date.today());
*/