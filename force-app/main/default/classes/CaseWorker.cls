@RestResource(urlMapping='/caseworker/*')
global with sharing class CaseWorker {
    
    // Get | Post | Patch | Delete

    @HttpGet 
    global static List<Case> getAllOpenCases() {
        RestRequest request = RestContext.request;
        // Map<String, String>
        System.debug(request.params);
        String contactName = request.params.get('contactname');
        return [SELECT Id, CaseNumber, Status FROM Case WHERE Contact.Name =: contactName];
    }

    @HttpDelete
    global static String deleteCaseRecordUsingId() {
        RestRequest request = RestContext.request;
        // Map<String, String>
        System.debug(request.params);
        Id caseId = (Id) request.params.get('caseId');
        DELETE new Case(Id = caseId);
        return 'SUCCESS';
    }

    @HttpPost
    global static String updateCaseRecordUsingId() {
        RestRequest request = RestContext.request;
        System.debug(request.params);
        Id caseId = (Id) request.params.get('caseId');
        String statusValue = request.params.get('status');

        UPDATE new Case(Id = caseId, Status = statusValue);
        return 'SUCCESS';
    }
}