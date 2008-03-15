<!--
PureMVC CF Demo - Login
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent displayname="LoginWithReturnQueryCommand" 
			 extends="org.puremvc.cf.patterns.command.SimpleCommand" 
			 implements="org.puremvc.cf.interfaces.ICommand"
			 output="true">
	
	<cffunction name="execute" returntype="void" access="public" output="true">
		<cfargument name="notification" type="org.puremvc.cf.interfaces.INotification" required="true">
		<cfscript>
			var user = arguments.notification.getBody();
			var securityProxy = application.facadeInstance.retrieveProxy("SecurityProxy");
			securityProxy.loginUserWithReturnQuery( user );
		</cfscript>
	</cffunction>
	
</cfcomponent>