public with sharing class FruitsCtrl {

  public String portalSettings       { get; set; }
  public String portalSettingsKeySet { get; set; }
  public String mainFruit            { get; set; }
  public String mainFruitIsApple    { get; set; }

  /* Main initialization */
  public FruitsCtrl() {

    Map<String,Fruits_Portal_Settings__c> portalSettingsMap 
      = Fruits_Portal_Settings__c.getall();
    if(portalSettingsMap.containsKey('Main Fruit')) {
      mainFruit = portalSettingsMap.get('Main Fruit').Value__c;
      /* Dummy actions, just for demo */
      mainFruitIsApple = JSON.serialize(
        !(portalSettingsMap.get('Main Fruit').Value__c == 'Banana'));
    }
    portalSettings       = JSON.serialize(portalSettingsMap);
    portalSettingsKeySet = JSON.serialize(portalSettingsMap.keySet());

  }

  @RemoteAction
  public static Map<String,Object> getAllBananas(Map<String,Object> arg) {
    return BananaService.getAllBananas(arg);
  }

  @RemoteAction
  public static Map<String,Object> getAllOpportunities (Map<String,Object> arg) {
    return OpportunityService.getAllOpportunities(arg);
  }

}