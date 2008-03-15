<!--
PureMVC CF Demo - Login
By Michael Oddis <michael.oddis@puremvc.org>
Copyright(c) 2008 Michael Oddis, Some rights reserved.
-->
<cfcomponent name="User" displayname="User">
	
	<cfproperty name="userId" type="numeric" required="true" default="0">
	<cfproperty name="username" type="string" required="true" default="">
	<cfproperty name="password" type="string" required="true" default="">
	
	<cfscript>
		variables.userId = 0;
		variables.username = "";
		variables.password = "";
	</cfscript>
	
	<cffunction name="init" returntype="LoginApp.model.user.User" access="public" output="true">
		<cfscript>
			return this;
		</cfscript>
	</cffunction>
	
	<cffunction name="getIdentity" access="public" returntype="numeric" output="true">
		<cfscript>
			return this.getUserId();
		</cfscript>
	</cffunction>
	
	<!-- Accessor methods -->
	
	<cffunction name="getUserId" returntype="numeric" access="public" output="true">
		<cfscript>
			return variables.userId;
		</cfscript>
	</cffunction>
	
	<cffunction name="setUserId" returntype="string" access="public" output="true">
		<cfargument name="val" type="numeric" required="true">
		<cfscript>
			variables.userId = arguments.val;
		</cfscript>
	</cffunction>
	
	<cffunction name="getUsername" returntype="string" access="public" output="true">
		<cfscript>
			return variables.username;
		</cfscript>
	</cffunction>
	
	<cffunction name="setUsername" returntype="string" access="public" output="true">
		<cfargument name="val" type="string" required="true">
		<cfscript>
			variables.username = arguments.val;
		</cfscript>
	</cffunction>
	
	<cffunction name="getPassword" returntype="string" access="public" output="true">
		<cfscript>
			return variables.password;
		</cfscript>
	</cffunction>
	
	<cffunction name="setPassword" returntype="string" access="public" output="true">
		<cfargument name="val" type="string" required="true">
		<cfscript>
			variables.password = arguments.val;
		</cfscript>
	</cffunction>
	
</cfcomponent>