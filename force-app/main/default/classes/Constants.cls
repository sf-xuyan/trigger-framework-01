public with sharing class Constants {
  public static final Map<String, List<String>> SOBJECT_TO_PHONE_FIELDS_MAP = new Map<String, List<String>>{
    'Account' => new List<String>{ 'Phone', 'Fax' }
  };
}
