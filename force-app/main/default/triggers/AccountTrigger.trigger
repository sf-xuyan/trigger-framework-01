trigger AccountTrigger on SOBJECT (before insert, after insert, before update, after update) {
    new AccountTriggerHandler().run();
}