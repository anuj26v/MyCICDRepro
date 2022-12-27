trigger updatecontact on contact(before update) {

    for(contact c: trigger.new) {
    
    c.Languages__c='update in before trigger';
    
    }

}