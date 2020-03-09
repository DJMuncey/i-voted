<cfapplication 
name="alumni.cornell.edu Trustee Balloting"
sessionmanagement="yes"> 
<cfset request.server_name = "http://www.alumni.cornell.edu">
<cfset request.secure_server_name = "https://www.alumni.cornell.edu">
<cfif Find("trusteeballot",CGI.SERVER_NAME) neq 0>
	<cflocation url="https://www.alumni.cornell.edu/trustees/" addtoken="no">
</cfif>

<cfset request.rds = "aadc_rds">
<cfset request.schema = "psprod">
<cfset request.dsn = "aad_intranet">
<cfset request.main = "main_db">
<cfset request.db1 = "main_db">
<cfset db1 = "main_db">


<!---<cfif CGI.SERVER_PORT EQ '80'>
	<cflocation url="https://www.alumni.cornell.edu/trustees/" addtoken="no">
</cfif>--->

<cfparam name="application.incpath" default="../_includes"> 
<cfparam name="application.root" default="/">
<cfparam name="application.imgpath" default="../_images"><!--- SITEWIDE INCLUDE PATH FOR CSS AND HEADER AND FOOTER --->
<cfparam name="application.newpath" default="../_new">
<cfparam name="application.secure_includes" default="../secure/includes">	<!--- MAPS TO INCLUDES FOLDER IN SECURE DIRECTORY --->
<cfparam name="application.securepath" default="../secure">	<!--- MAPS TO SECURE ROOT --->
<cfparam name="application.dues_logos" default="../secure/dues/logos"> <!--- FOR THE LOGOS ON ONLINE DUES PAYMENT PAGES --->
<cfparam name="application.dues_cgi" default="../cfxcgi/dues"> <!--- PATH FOR DUES FORM HANDLERS --->
<cfparam name="application.gifts_cgi" default="../cfxcgi/gifts"> <!--- PATH FOR GIVING FORM HANDLERS --->
<cfparam name="application.cfxcgi" default="../cfxcgi"> <!--- GENERAL CFXCGI PATH --->
<cfparam name="application.webAdminEmail" default="alumniwebmaster@cornell.edu">

<cfparam name="request.incpath" default="../_includes"> 
<cfparam name="request.root" default="/">
<cfparam name="request.imgpath" default="../_images"><!--- SITEWIDE INCLUDE PATH FOR CSS AND HEADER AND FOOTER --->
<cfparam name="request.newpath" default="../_new">
<cfparam name="request.secure_includes" default="../secure/includes">	<!--- MAPS TO INCLUDES FOLDER IN SECURE DIRECTORY --->
<cfparam name="request.securepath" default="../secure">	<!--- MAPS TO SECURE ROOT --->
<cfparam name="request.dues_logos" default="../secure/dues/logos"> <!--- FOR THE LOGOS ON ONLINE DUES PAYMENT PAGES --->
<cfparam name="request.dues_cgi" default="../cfxcgi/dues"> <!--- PATH FOR DUES FORM HANDLERS --->
<cfparam name="request.gifts_cgi" default="../cfxcgi/gifts"> <!--- PATH FOR GIVING FORM HANDLERS --->
<cfparam name="request.cfxcgi" default="../cfxcgi"> <!--- GENERAL CFXCGI PATH --->
<cfparam name="request.webAdminEmail" default="alumniwebmaster@cornell.edu">
<cfparam name="session.test" default="false">
<cfparam name="session.debug" default="test">

<!--<cfinclude template="../_includes/_dbconnect.cfm">-->

<cfparam name="secwebroot" default="https://www.alumni.cornell.edu/trustees">
<cfif IsDefined("url.test")>
	<cfset session.test = true>
</cfif>

<cfif IsDefined("url.debug")><cfset session.debug = true></cfif>
 
<cfif Now() GT CreateDate(2010,04,02) AND session.test eq false AND Find("closed.cfm",CGI.SCRIPT_NAME ) eq 0 AND session.debug eq false>
	<cflocation url="closed.cfm" addtoken="no">   
</cfif>



<!---<cfif Now() GT CreateDate(2007,04,2) AND Find("results.cfm",CGI.SCRIPT_NAME) eq 0>
	<cflocation url="results.cfm" addtoken="no">
</cfif>--->
<!--- error handling --->
<!--- <cferror type="exception" template="_includes\cf_errors.cfm" mailto="#application.webAdminEmail#" exception="Any">
<cferror type="request" template="_includes\cf_errors.cfm" mailto="#application.webAdminEmail#"> --->