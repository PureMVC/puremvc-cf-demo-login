<!--
PureMVC CF Demo - Login
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent displayname="LoginCommand"
			 extends="org.puremvc.cf.patterns.command.SimpleCommand" 
			 implements="org.puremvc.cf.interfaces.ICommand"
			 output="true">
	
	<cffunction name="execute" returntype="void" access="public" output="true">
		<cfargument name="notification" type="org.puremvc.cf.interfaces.INotification" required="true">
		<cfscript>
			var securityProxy = application.facadeInstance.retrieveProxy("SecurityProxy");
			securityProxy.loginUser( arguments.notification.getBody() );
		</cfscript>
	</cffunction>
	
</cfcomponent>