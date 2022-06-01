map<string, string> mapCntCurrency = new map<string, string>();
//USA --> Dollar
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country currency = ' + mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Turkey';
system.debug('country is ' + country);
string TurkeyCurrency = mapCntCurrency.get(country);//valid? YES

system.debug('India Currency = ' + IndiaCurrency);
system.debug('Turkey Currency = ' + TurkeyCurrency);


list<string> currencyList = mapCntCurrency.values();
system.debug('currencies in map: ' + currencyList);


//{El Salvador, France, India, Japan, Turkey, USA} --> countries

Set<string> countrySet = mapCntCurrency.keySet();
system.debug('countries in map: ' + countrySet);

for(string eachKey: countrySet){
    string eachCurrency = mapCntCurrency.get(eachKey);
    string printString = 'country is ' + eachKey + ', its currency is ' + eachCurrency;
    system.debug('country is ' + eachKey + ', its currency is ' + mapCntCurrency.get(eachKey));
}