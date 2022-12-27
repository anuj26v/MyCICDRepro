/* I-00937  Ishwar  Reset password for Community user if reactivated and last login is not null*/
public without sharing class UserTriggerHelper {

    /**
    * @description Checks that ABN Access Management user can only administer Salesforce Platform users and
    * Salesforce Users with Sales Cloud, Relationship Manager Sales Cloud and Comm Combined Sales Cloud profiles.
    **/
  /*  public static void validateLicenseType(Map<Id, User> oldMap, Map<Id, User> newMap, String context) {
        if (oldMap == null && newMap == null) return;
        
        // Check current user profile - only validate license type for ABN Access Management.
        String profileName = UtilitiesHelper.getUserProfileName(UserInfo.getProfileId());
        if (profileName != 'ABN Access Management') return; 

        // Build map of salesforce profiles.
        Map<Id, Profile> salesforceProfiles = new Map<Id, Profile>([SELECT Id, Name FROM Profile WHERE UserLicense.Name = 'Salesforce']);
        if (salesforceProfiles.isEmpty()) {
            return; // No Salesforce profiles active so nothing to validate against.
        }

        if (context == 'Insert' || context == 'Update') {
            for (User newUser: newMap.values()) {
                if (salesforceProfiles.containsKey(newUser.profileId)) {
                    // Validate Salesforce profile 
                    String sfProfileName = salesforceProfiles.get(newUser.profileId).Name;
                    if (sfProfileName == Constants.PROFILE_ABN_SALES_CLOUD || 
                        sfProfileName == Constants.PROFILE_ABN_RELATIONSHIP_MANAGER_SALES_CLOUD || 
                        sfProfileName == Constants.PROFILE_ABN_COMM_COMBINED_SALES_CLOUD) {
                        // valid Salesforce profile.
                    } else {
                        newMap.get(newUser.Id).addError(Label.Invalid_user_type_for_insert); // Invalid Salesforce profile found.
                    }
                }
            }
        }
    }*/
    /* I-00937  Ishwar  Reset password for Community user if reactivated and last login is not null*/
    public static void resetUserPassword(map<Id, User> oldMap, map<Id, User> newMap)
    {
        for(User newUser : newMap.values())
        {
            User oldUser = oldMap.get(newUser.Id);
            
            if(newUser.IsActive == true && oldUser.IsActive == false && newUser.LastLoginDate != null && newUser.UserType == 'CSPLitePortal')
            {
                System.resetPassword(newUser.Id, true);
            }
        }
    }
     
}