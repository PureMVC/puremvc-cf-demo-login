*************************************************
*											 	*
*    PureMVC for ColdFusion Alpha v1.0 			*
*    Examples Readme							*
*											 	*
*************************************************

Introduction
-----------------------------------------------------------
PureMVC for ColdFusion is a lightweight framework based on the PureMVC 2.0 AS3 Reference implementation for creating 
applications based upon the classic Model-View-Controller design pattern.

The examples provided in this archive will give you a starting point to begin developing with PureMVC for ColdFusion. If 
you would like to contribute to the project in some form or another, please send me an email at michael.oddis@puremvc.org. We 
need demo's, utilities and lots of feedback.


Prerequisites
-----------------------------------------------------------
- Adobe ColdFusion 8
- PureMVC Framework for ColdFusion v1.0 Alpha


Installation
-----------------------------------------------------------
If you already have the framework installed, go to Step 2.

Lastest release: tags/1.0
Trac website: http://trac.puremvc.org/PureMVC_CF
SVN repository: http://svn.puremvc.org/PureMVC_CF

STEP 1 - Download the latest release above from the Trac website or SVN and choose a scenaro for installation.
	
	[SCENARIO 1]
	The quickest and easiest way to install the framework is to extract the contents of the PureMVC_CF.zip into the root of 
	your website. So, if your site root is located at 'C:\ColdFusion8\wwwroot\' then extract the contents of the zip under wwwroot.
	You should see two folders under site root named "org" and "test".
	
	org - The PureMVC Framework for ColdFusion classes.
	test - The PureMVC Framework for ColdFusion test classes.
	
	[SCENARIO 2]
	You can configure ColdFusion mappings to access the framework using the ColdFusion Administrator.
	1 - Extract the contents of the PureMVC_CF.zip into any preferred location outside your site root.
	2 - Login to the ColdFusion Admin and create a mapping named "org", which points to the location of the
		"org" folder you extracted from the PureMVC_CF.zip archive. Do the same for "test" if you plan on running the unit tests.
	
STEP 2 - Download the examples for PureMVC Framework for ColdFusion from the Trac website and extract the contents of the examples archive 
	 into the root folder of your site.

Running Examples
-----------------------------------------------------------
Hello World Example - Go to 'http://[youraddress]:[yourport]/LoginApp/LoginApp.cfm.
Login Example - Go to 'http://[youraddress]:[yourport]/HelloWorld/HelloWorldApp.cfm.


