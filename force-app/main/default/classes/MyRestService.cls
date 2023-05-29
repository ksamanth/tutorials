@RestResource(urlMapping='/giveCaseInformation/*')
global with sharing class MyRestService {
    // https://samanth-sfdx-dev-ed.lightning.force.com/giveCaseInformation/*

    @HttpGet
    global static List<Case> getCases() {
        return [SELECT Id, IsEscalated, Priority, status, OwnerId FROM Case];
    }

    @HttpPost 
    global static String updateCasePriorityToNill() {
        RestRequest request = RestContext.request;
        Map<String, String> myInfo = request.params;
        
        if(myInfo.get('priority') == 'High') {
            Case myCase = new Case(Id = myInfo.get('caseId'), status = 'Escalated');
            UPDATE myCase;
            return JSON.serialize(myCase);
        }else {
            return 'NO UPDATE';
        }
    }
}