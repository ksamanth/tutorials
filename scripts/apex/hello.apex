// marketing -> sales -> service
// Sales - Cloud
// Lead -> Opportunity | Account | Contact -> Product2 -> Order -> Invoice -> Payments.
// Sold a package with LWC components.
// Case -> Task -> close.
// Datacenter - emails / phones.
// campaign - more email / phones.
// 100 queries
// No queries in for loops.
// Because we don't know how many records that we need to work with at any given point of time in apex, we bulkify the code.
// Avoid null pointer exceptions by checking state of variables.
// SOQL Query injection, String.escapeSingleQuotes(variable);
// with sharing & without sharing. 
// Query - 15 fields - 3 access | WITH SECURTY_ENFORCED
// Trigger - 1 Trigger per object - Always write the logic / trigger operation in a different class - 
// Test classes - @Setup - create necessary data - TestDataFactory - a class where you create all the data - Start test & Stop test - System.runAs([SELECT Id FROM User WHERE Name = 'SAMANTH']) 
// request.setHeader('Accept', 'application/json;charset=UTF-8');
// https://none113.lightning.force.com/analytics/home

// Account Number - 52210121634
// IFSC - SBIN0021872

// starwars API
// weather Widgets API 
// Maps API
// unsplash API 
// discord API 

// sharepoint API | Microsoft
// informatica API | webservice

// https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_rest.htm


// Login to salesforce - Session Id (Access Token) gets created for that user. 

// 1. Login to the org.
// 2. We create / refresh the session id programmatically. username & password - 

// 1. Connected Apps. [He can access all information];


// REST Api services

// client_id - 3MVG9wt4IL4O5wvJ8bmjPx9D5A.XVCOYSh892PzcQKSbq.y.uYwjke4dtfpsgntzDvGdoObIZaD..iufA.LJ1
// client_secret - E4B9B226DD068C9E985C5F56613DBE0DD5507D3735C7D0712A762493DA87EDCE

// Get / refresh the access token & then make a callout to the system to get the data

// id - 3MVG9n_HvETGhr3BKhYD8Ri7xUDTsN4cbaApGWzG6oomDfymGBPgACjXEvfMpJadCJZGhcO.LmmN6Bo7O4iMN
// secret - E8C5F7E9AA11BC20DF0965CFBC484F4C67BF00E37EA3D6A118E3D6824F5A6F7D


DOM.Document mydoc = new DOM.Document();
DOM.XmlNode mynode = mydoc.createRootElement('samanth', null, null);
mynode.addChildElement('tutorial', null, null).addTextNode('AT 8:00 PM');
System.debug(mydoc.toXmlString());

Map<String, Object> mymap = (Map<String, Object>) JSON.deserializeUntyped('{"tutorial":"samanth"}');
System.debug(mymap.get('tutorial'));



