
public class OpportunityService {
	
  public static Map<String,Object> getAllOpportunities(Map<String,Object> arg) {
    Map<String,Object> result = new Map<String,Object>();
    String ownerId = (String)arg.get('ownerId');
    try {
      /* Do something usefull */
    } catch (Exception e) {
      result = new Map<String,Object> {
        'type' => 'error',
        'msg'  => (e.getMessage())
      };
    }
    return result;
  }
  
}