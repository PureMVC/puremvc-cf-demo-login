<!--
PureMVC CF Demo - Login
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent name="UserService" displayname="UserService"
			 output="true">
	
	<cffunction name="init" displayname="init" access="public" returntype="LoginApp.model.user.UserDelegate" description="" hint="" output="true">
		<cfscript>
			return this;
		</cfscript>
	</cffunction>
	
	<cffunction name="getUserDetail" displayname="getUserDetail" access="public" returntype="LoginApp.model.user.User" description="" hint="" output="true">
		<cfargument name="user" type="LoginApp.model.user.User" required="false">
		<cfscript>
			var userDao = CreateObject("component","LoginApp.model.user.UserDao").init();
			arguments.user = userDao.read(arguments.user);
			return arguments.user;
		</cfscript>
	</cffunction>
	
</cfcomponent>