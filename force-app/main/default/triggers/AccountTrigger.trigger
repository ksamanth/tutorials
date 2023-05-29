trigger AccountTrigger on Account (after insert) {
    // After the phone changes in the account, we'll change the phone in all the related contacts
    AccountTriggerHandler handler = new AccountTriggerHandler();

    if(trigger.isAfter && trigger.isInsert) {
        handler.handleAfterInsert(trigger.new);
    }
}