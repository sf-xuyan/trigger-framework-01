public with sharing class AccountTriggerHandler extends TriggerHandler {
    public override void beforeUpdate() {
        
    }

    public static String formatPhone(String inputPhone) {
        // Use Regex to replace non-number characters
        String fphone = inputPhone.replaceAll('\\D', '');
    
        if (fphone.length() == 10) {
          fphone = '(' + fphone.substring(0, 3) + ') ' + fphone.substring(3, 6) + '-' + fphone.substring(6);
          return fphone;
        }
    
        return inputPhone;
      }
    
      public static void formatPhoneFields(List<SObject> records, String sobjectType) {
        for (SObject record : records) {
          List<String> phoneFields = Constants.SOBJECT_TO_PHONE_FIELDS_MAP.get(sobjectType);
          for (String phoneField : phoneFields) {
            Object phoneVal = record.get(phoneField);
            if (phoneVal != null)
              record.put(phoneField, formatPhone(String.valueOf(phoneVal)));
          }
        }
      }
}