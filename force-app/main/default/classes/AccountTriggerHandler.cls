public with sharing class AccountTriggerHandler extends TriggerHandler {
  private List<Account> newRecords;

  public AccountTriggerHandler() {
    this.newRecords = (List<Account>) Trigger.new;
  }

  public override void beforeUpdate() {
    CommonUtil.formatPhoneFields(newRecords, 'Account');
  }
}
