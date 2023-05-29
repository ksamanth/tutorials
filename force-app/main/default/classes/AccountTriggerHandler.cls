public with sharing class AccountTriggerHandler {
    
    public void handleAfterInsert(List<Account> newAccounts) {
        checkRevenue(newAccounts);
    }

    private static void checkRevenue(List<Account> newAccounts) {
        Decimal myThreshold = 10000;
        for(Account acc : newAccounts) {
            if(acc.AnnualRevenue > myThreshold) {
                System.debug('More than $10000');
            }
        }
    }

    public static String getStringData() {
        return null;
    }
}