@isTest
public with sharing class CalculatorCalloutMockDivide   implements WebServiceMock {
    public void doInvoke(Object stub, Object request, 
    Map<string, object> response, string endpoint, string soapAction, string requestName,
    string responseNS, string responseName, string responseType){
        //set reponse
        calculatorServices.doDivideResponse response_x = 
            new calculatorServices.doDivideResponse();
        response_x.return_x = 3.0;
        response.put('response_x', response_x);
    }
}
