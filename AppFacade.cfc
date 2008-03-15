<!--
PureMVC CF Demo - Login
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent extends="org.puremvc.cf.patterns.facade.Facade" 
			 implements="org.puremvc.cf.interfaces.IFacade"
			 output="true">
	
	<cffunction name="getInstance" displayname="getInstance" access="public" output="true" returntype="any">
		<cfscript>
			if ( NOT StructKeyExists(application,"facadeInstance") )
			{
				application.facadeInstance = CreateObject("component", "LoginApp.AppFacade");
				application.facadeInstance.initializeFacade();
			}
			return application.facadeInstance;
		</cfscript>
	</cffunction>
	
	<cffunction name="initializeFacade" displayname="initializeFacade" access="public" returntype="void">
		<cfscript>
			super.initializeFacade();
		</cfscript>
	</cffunction>
	
	<cffunction name="initializeController" returntype="void" access="public" output="true">
		<cfscript>
			super.initializeController();
			this.registerCommand("STARTUP", "LoginApp.controller.ApplicationStartupCommand");
			this.registerCommand("LOGIN_USER", "LoginApp.controller.security.LoginCommand");
			this.registerCommand("LOGIN_USER_QUERY", "LoginApp.controller.security.LoginWithReturnQueryCommand");
		</cfscript>
	</cffunction>

</cfcomponent>