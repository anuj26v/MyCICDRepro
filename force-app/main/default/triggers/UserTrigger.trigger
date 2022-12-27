trigger UserTrigger on User (after insert, before update, after update) {

    if (Trigger.isBefore)
    {
        if (Trigger.isUpdate)
        {
           // UserTriggerHelper.validateLicenseType(Trigger.oldMap, Trigger.newMap, 'Update');
        }
    }

    if (Trigger.isAfter)
    {
        if (Trigger.isInsert)
        {
           // UserTriggerHelper.validateLicenseType(Trigger.oldMap, Trigger.newMap, 'Insert');    
            //UserTriggerHelper.updateContactUser(Trigger.new);

        }
        
        if (Trigger.isUpdate)
        {
            //UserTriggerHelper.resetUserPassword(Trigger.oldMap, Trigger.newMap);
            //UserTriggerHelper.recordFieldChanges(Trigger.old, Trigger.new);
            
        }
        
    }
}