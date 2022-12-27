@RestResource(urlMapping='/api/Account/*')
global with sharing class demoRestAPI
{
    @HttpGet
    global static List<Account> doGet() 
    {
       
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        List<Account> result = [SELECT Id, Name, Phone, Website FROM Account limit 10];
        return result;
    }
    
        /*{
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String AccNumber = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Name = :AccNumber ];
        return result;
        }*/
}