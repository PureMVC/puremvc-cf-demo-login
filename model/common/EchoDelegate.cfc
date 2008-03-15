<!--
PureMVC CF Demo - Login
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent displayname="EchoDelegate"
			 output="true">
				 
	<cfscript>
	</cfscript>
	
	<cffunction name="init" displayname="init" description="" access="public" returntype="LoginApp.model.common.EchoDelegate" hint="" output="true">
		<cfscript>
			return this;
		</cfscript>
	</cffunction>
	
	<cffunction name="echoUser" displayname="echoUser" description="" access="public" returntype="LoginApp.model.user.User" hint="" output="true">
		<cfargument name="user" type="LoginApp.model.user.User" required="false">
		<cfscript>
			return arguments.user;
		</cfscript>
	</cffunction>
	
	<cffunction name="echoUserAsQuery" displayname="echoUserAsQuery" description="" access="public" returntype="query" hint="" output="true">
		<cfargument name="user" type="LoginApp.model.user.User" required="false">
		<cfscript>
			var qUser = QueryNew("userId,userName,userPassword");
			QueryAddRow(qUser, 1);
			qUser.userId[1] = arguments.user.getUserId();
			qUser.userName[1] = arguments.user.getUserName();
			qUser.userPassword[1] = arguments.user.getPassword();
			return qUser;
		</cfscript>
	</cffunction>
	
</cfcomponent>