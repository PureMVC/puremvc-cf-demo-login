<!--
PureMVC CF Demo - Login
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent extends="org.puremvc.cf.patterns.command.SimpleCommand" implements="org.puremvc.cf.interfaces.ICommand" output="false">
	
	<cffunction name="execute" returntype="void" access="public" output="true">
		<cfargument name="notification" type="org.puremvc.cf.interfaces.INotification" required="true">
		<cfscript>
			application.facadeInstance.registerProxy( CreateObject("component", "LoginApp.model.AppProxy").init() );
			application.facadeInstance.registerProxy( CreateObject("component", "LoginApp.model.security.SecurityProxy").init() );
		</cfscript>
	</cffunction>
	
</cfcomponent>