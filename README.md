# RobotFrameworkTraining


## Section 1


### Lecture 1.1 - Introduction

Robot framework is a open source test automation framework written in python. The beauty of this framework is that you need not learn any language like java ,C# or python because it has simple plain text syntax. And instead of writing complicated code, you need to use pre-written functions. It can be extended easily with huge amount of libraries in python or java.

Robot Framework is operating system and application independent. It supports both Python 2 and Python 3, and runs also on Jython (JVM), IronPython (.NET) and PyPy.



#### Key features

* open-source

* python based automation framework

* keyword driven

* extends support for web, device, api and database automation

* operating system independent



#### Architecture

![Robot framework architecture](/images/RF_architecture.png)



#### What is Selenium?

Selenium automates browsers. That's it! What you do with that power is entirely up to you. Primarily, it is for automating web applications for testing purposes, but is certainly not limited to just that.
[source : seleniumhq.org]

To learn more about selenium, refer [selenium official website](https://www.seleniumhq.org/)


SeleniumLibrary is a web testing library for Robot Framework that utilizes the Selenium tool internally. 



---------------------------------------------------------------




### Lecture 1.2 - Edge of Robot framework over other automation tools/frameworks


* RF is Free.

* OS independent.

* Require no (or very less) programming skill.

* support web, device, api and database automation.

* Excellent reporting.

* support Continuous Integration

* support parallel execution.

* support remote execution.

* excellent community support.

* good option for RPA.



---------------------------------------------------------------




### Lecture 1.3 - Installation

Installation for robot framework is easy. You just need to follow below steps:

1. Download and Install Python  https://www.python.org/downloads/

2. Update envirnment variables. You need to update the PATH variable with 
		a. C:\Python3\
		b. C:\Python3\Scripts
		c. C:\Python3\Lib\site-packages\
		
![Environment variables](/images/environmentVariables.png)

3. Open Cmd and Type "pip" to check if PIP is already installed.

  a. If PIP is installed aready, it will appear like this
	
![Pip installed already](/images/pipInstalled.png)

  b. If PIP is not installed, it will appear like this
  
![Pip not installed](/images/pipNotInstalled.png)


  i. To install pip, go to https://pypi.org/project/setuptools/ and click on "Download files"
		
  ii. Also, download pip from https://pypi.org/project/pip/ in same way.
 		
  iii. Unzip setuptools, open command prompt and change directory to extracted folder
         Example: cd "C:/Downloads/setuptools"
		
  iv. Then install setuptools using command:
		
```
	python setup.py install
```
		
  v. Install pip in exactly same way.
		
  vi. Again try step 3.a and Pip should be available now.


4. Install RobotFramework and required Libraries using below commands in command prompt

	```
		pip install robotframework
		pip install robotframework-SeleniumLibrary
		pip install robotframework-RideEditor
	```
	
5. Open command prompt, type ride.py and hit Enter. If RIDE opens, then you're all set. If it gives error that WxPython is not installed, then copy the link from the error, download and install. After installing, open new command prompt window and check if RIDE opens.
	![Ride installed](/images/RideInstalled.png)



---------------------------------------------------------------




### Lecture 1.4 - RIDE and RED IDE 

To install ride, which is default editor for robotframework:

> pip install robotframework-ride


This is how RIDE looks like

![RIDE Editor](/images/RideEditor.png)


another view of RIDE (table view)

![RIDE Editor table view](/images/RideEditor2.png)


RIDE has some bugs therefore I recommend to use RED. RED Editor is Eclipse based editor for RobotFramework test cases.

Here is the link to [download RED](https://github.com/nokia/RED/releases).

This is how RED looks like

![RED Editor](/images/RedEditor.png)



---------------------------------------------------------------

### Lecture 1.5 - Create a new project in RED

1. Click on New > Robot Project

![New robot project](/images/REDNewProject.png)

2. Enter project name and location

![Project name](/images/REDNewProject2.png)

3. Right click on project on the left panel and add a test suite.

![Add test suite](/images/RED_addNewTestSuite.png)

4. Now, you can add test cases in Editor.



---------------------------------------------------------------

### Lecture 1.6 - Writing few basic tests for robot framework

```
*** Test Cases ***

TestCase1 - Celcius to Farenheit
    ${celcius}=    Set Variable    37
    ${Farehneit}=    Evaluate    (${celcius}*9/5)+32
    Log    ${Farehneit}
    
TestCase2 - Celcius to Farenheit in Bulk
    @{celcius}=    Create List    10    12    37    22
    FOR    ${temp}    IN    @{celcius}
        ${Farehneit}=    Evaluate    (${temp}*9/5)+32
        Log    ${Farehneit}
    END
```

### Output logs
```
Starting test: Project1.TS1.TestCase1 - Celcius to Farenheit
20191207 22:41:50.743 : INFO : ${celcius} = 37
20191207 22:41:50.743 : INFO : ${Farehneit} = 98.6
20191207 22:41:50.743 : INFO : 98.6
Ending test: Project1.TS1.TestCase1 - Celcius to Farenheit

Starting test: Project1.TS1.TestCase2 - Celcius to Farenheit in Bulk
20191207 22:41:50.743 : INFO : @{celcius} = [ 10 | 12 | 37 | 22 ]
20191207 22:41:50.743 : INFO : ${Farehneit} = 50.0
20191207 22:41:50.743 : INFO : 50.0
20191207 22:41:50.743 : INFO : ${Farehneit} = 53.6
20191207 22:41:50.743 : INFO : 53.6
20191207 22:41:50.743 : INFO : ${Farehneit} = 98.6
20191207 22:41:50.743 : INFO : 98.6
20191207 22:41:50.743 : INFO : ${Farehneit} = 71.6
20191207 22:41:50.743 : INFO : 71.6
Ending test: Project1.TS1.TestCase2 - Celcius to Farenheit in Bulk
```






---------------------------------------------------------------






## Section 2


### Lecture 2.1 - Test cases, Test Suite, User Keywords and Reports