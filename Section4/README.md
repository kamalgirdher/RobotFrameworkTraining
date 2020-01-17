## Section 4 - RequestsLibrary for Robot framework


### Lecture 4.1 - Introduction to REST services and RequestsLibrary

REST stands for REpresentational State Transfer. REST uses HTTP Protocol and is web standards based architecture. Every component is called resource in REST terminology and a resource is accessed by a common interface using HTTP standard methods.

These are the four HTTP methods used in REST based architecture.

    1. GET

    2. POST

    3. PUT
	
    4. DELETE

Web services based on REST Architecture are known as RESTful web services. These webservices uses HTTP methods to implement the concept of REST architecture. A RESTful web service usually defines a URI, Uniform Resource Identifier a service, provides resource representation such as JSON and set of HTTP Methods.

In robot framework, **RequestsLibrary** is a library which gives functions to access the web services using these HTTP methods. It can be installed via **pip**

```
pip install -U requests
pip install -U robotframework-requests
```


### Lecture 4.2 - Various HTTP request methods

These are the four HTTP methods used in REST based architecture.

    GET - Provides a read only access to a resource.

    POST - Used to create a new resource.

    PUT - Used to update a existing resource or create a new resource.
	
    DELETE - Used to remove a resource.

In this tutorial, we would use mocking of services on our local to execute the tests. For this, we are using a tool called **Mockoon**. 

**Installation**


    1. Download and install Mockoon(https://mockoon.com) to mock services and practice extensively.

    2. Create New environment in mockoon using mockoon_environment.json in the project. [Refer : https://megettingerror.blogspot.com/2019/06/how-to-import-environment-in-mockoon.html]



### Lecture 4.3 - Get request | REST API testing using Robot framework

**GET request**

GET requests are used to retrieve resource representation/information only – and not to modify it in any way. As GET requests do not change the state of the resource, these are said to be safe methods.

```
** Settings ** 	  	  	  	 
Library 	RequestsLibrary 	  	  	 
** Test Cases ** 	  	  	  	 
TC1 - Get request	  	  	 
  	Create Session 	google 	http://www.google.com 	 
  	${response}= 	Get Request 	google 	/
  	Should Be Equal As Strings 	${response.status_code} 	200 	 
```

**GET request using proxy**
```
TC2 - Get request using outbound proxies	  	  	 
  	${proxies}= 	Create Dictionary 	http=http://acme.com:912 	https=http://acme.com:913
  	Create Session 	google 	http://www.google.com    proxies=${proxies}
  	${response}= 	Get Request 	google 	/
  	Should Be Equal As Strings 	${response.status_code} 	200
```


**GET request using cookies**
```  	
TC3 - Get request using cookies	  	  	 
  	${cookies}= 	Create Dictionary 	cookie1=111 	cookie2=222
  	Create Session 	google 	http://www.google.com    cookies=${cookies}
  	${response}= 	Get Request 	google 	/
  	Should Be Equal As Strings 	${response.status_code} 	200
```  	



### Lecture 4.4 - Post request | REST API testing using Robot framework
**POST**

POST APIs are used to create new subordinate resources, e.g., a file is subordinate to a directory containing it or a row is subordinate to a database table. Talking strictly in terms of REST, POST methods are used to create a new resource into the collection of resources.

```
TC4 - Post request
    Create Session  uri  http://localhost:3000
  	${data}= 	Create Dictionary 	a=1    b=2
  	${params}= 	Create Dictionary 	c=2    d=3
    ${file_data}=  Get Binary File  ${CURDIR}${/}car.json
    &{files}=  Create Dictionary  file=${file_data}
    ${resp}=  Post Request  uri  /dolphins  files=${files}    data=${data}    params=${params}    
    Log    ${resp}
    Should Be Equal As Strings  ${resp.status_code}  200
```

**Visualising difference b/w GET and POST**
```
** Settings ** 	  	  	  	 
Library    RequestsLibrary
Library    OperatingSystem

** Test Cases ** 	  	  	  	 
 	
TC4 - Post request
    Create Session  uri  http://localhost:3000
  	${data}= 	Create Dictionary 	a=1    b=2
  	${params}= 	Create Dictionary 	c=2    d=3
    ${file_data}=  Get Binary File  ${CURDIR}${/}car.json
    &{files}=  Create Dictionary  file=${file_data}
    ${resp}=  Post Request  uri  /dolphins  files=${files}    data=${data}    params=${params}    
    Log    ${resp}
    Should Be Equal As Strings  ${resp.status_code}  200

TC5 - Get request with data and params
	Create Session 	uri 	http://localhost:3000
    ${data}= 	Create Dictionary 	a=1    b=2
  	${params}= 	Create Dictionary 	c=2    d=3 	 
  	${response}= 	Get Request 	uri 	/answer    data=${data}    params=${params}
  	Should Be Equal As Strings 	${response.status_code} 	200
```

**Logs for 'TC4 - Post request' on MOCKOON**
![POST Logs](../images/postRequestLogsOnMockoon.png)

You can see that data and file goes in the form of form data and not as url query string.


**Logs for 'TC5 - Get request with data and params' on MOCKOON**

![GET Logs](../images/getRequestLogsOnMockoon.png)

You can see that body of request goes in the form of query string parameters(URL).



### Lecture 4.5 - Put request | REST API testing using Robot framework
PUT APIs are used primarily to update existing resource (if the resource does not exist, then API may decide to create a new resource or not). If a new resource has been created by the PUT API, the origin server MUST inform the user agent via the HTTP response code 201 (Created) response and if an existing resource is modified, either the 200 (OK) or 204 (No Content) response codes SHOULD be sent to indicate successful completion of the request.


### Lecture 4.6 - Delete request | REST API testing using Robot framework
DELETE APIs are used to delete resources (identified by the Request-URI).

A successful response of DELETE requests SHOULD be HTTP response code

 200 (OK) if the response includes an entity describing the status,
 
 202 (Accepted) if the action has been queued,
 
 204 (No Content) if the action has been performed but the response does not include an entity.

### Lecture 4.7 - Headers and params

### Lecture 4.8 - Assertions




Note : Some information has been picked from https://restfulapi.net/http-methods/