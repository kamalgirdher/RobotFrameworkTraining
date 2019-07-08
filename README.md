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



---------------------------------------------------------------


### Lecture 1.4 - RIDE and RED IDE 

To install ride, which is default editor for robotframework:

> pip install robotframework-ride


This is how RIDE looks like

![RIDE Editor](/images/RideEditor.png)


RIDE has some bugs therefore I recommend to use RED. RED Editor is Eclipse based editor for RobotFramework test cases.

Here is the link to [download RED](https://github.com/nokia/RED/releases).

This is how RED looks like

![RED Editor](/images/RedEditor.png)

---------------------------------------------------------------


### Lecture 1.5 - Writing few basic tests for robot framework