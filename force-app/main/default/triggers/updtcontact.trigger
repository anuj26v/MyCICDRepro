trigger updtcontact on contact(before update) {

    for(contact c: trigger.new) {
    
    if(c.Languages__c=='update in before trigger')
    
    WebServiceCallout.sendNotification();
    if(c.LastName!='Varshney')
    c.LastName.adderror('Last Name is not Varshney');
    
    
    
    
    }

}