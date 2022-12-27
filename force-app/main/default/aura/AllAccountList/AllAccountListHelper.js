({
  // Fetch the accounts from the Apex controller
  getAllAccountList: function(component) {
    var action = component.get('c.getAccounts');

    // Set up the callback
    var self = this;
    action.setCallback(this, function(actionResult) {
     component.set('v.accounts', actionResult.getReturnValue());
    });
    $A.enqueueAction(action);
  }
})