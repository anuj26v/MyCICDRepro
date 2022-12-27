public class WebServiceCallout {

    @future (callout=true)
    public static void sendNotification() {

        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        Http http = new Http();

        req.setEndpoint('https://www.google.com');
        req.setMethod('POST');
        req.setBody('Body');
        

        try {
            res = http.send(req);
        } catch(System.CalloutException e) {
            System.debug('Callout error: '+ e);
            System.debug(res.toString());
        }

    }
    
  }