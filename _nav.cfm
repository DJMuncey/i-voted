<!---<style type="text/css">
.form-wrap{
	width:100%;;
    max-width: 207px;
}
.form-wrap label{
    display:block;
    margin-bottom: 10px;
}
.form-wrap label > span{
    float: left;
    width: 150px;
    font-weight: bold;
    font-size: 14px;
    text-shadow: 1px 1px 1px #fff;
}
.form-wrap fieldset{
	max-width: 207px;
    border-radius: 10px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    margin: 0px 0px 10px 0px;
    border: 1px solid;
    padding: 20px 0 20px 20px;
    box-shadow: inset 0px 0px 15px #F1F1F1;
    -moz-box-shadow: inset 0px 0px 15px #F1F1F1;
    -webkit-box-shadow: inset 0px 0px 15px #F1F1F1;
}
.form-wrap fieldset legend{
    border-top: 1px solid ;
    border-left: 1px solid ;
    border-right: 1px solid ;
    border-radius: 5px 5px 0px 0px;
    -webkit-border-radius: 5px 5px 0px 0px;
    -moz-border-radius: 5px 5px 0px 0px;
    padding: 0px 8px 3px 8px;
    box-shadow: -0px -1px 2px #F1F1F1;
    -moz-box-shadow:-0px -1px 2px #F1F1F1;
    -webkit-box-shadow:-0px -1px 2px #F1F1F1;
    font-weight: 500;
    font-size: 16px;
}
.form-wrap input{
	max-width:140px;
}
.field{
	display: block;
}
.field input{
	display:inline-block;
	float: left;
}
.field .checkmark{
	display:none;
	float: left;
	margin:2px 0 0 2px;
}
.tooltip {
    position: relative;
    display: inline-block;
	left: 140px; 
	top: 10px;
}
.tooltip > div {
    display: none
}
.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: #fff;
    color: #555;
    text-align: center;
    border-radius: 6px;
    padding: 10px 5px;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 40%;
    margin-left: -80px;
    opacity: 0;
    transition: opacity 1s;
}
.tooltip .tooltiptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 60%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #fff transparent transparent transparent;
}
.tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
}
.tooltip a{
   color: #428bca;
}
.field-validation-error {
    background: #e99595 5px center no-repeat;
    position: relative;
    padding: 8px 8px 8px 35px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px #CCC;
    min-height: 20px;
    margin-top: 10px;
    margin-bottom: 15px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    display: none;
    max-width: 325px;  optionally, set a max-width 
}

    .field-validation-error::before {
        content: "";
        width: 0px;
        height: 0px;
        border: 0.8em solid transparent;
        position: absolute;
        bottom: 35px;
        border-bottom: 10px solid #e99595;
    }
.field-info {
	background: #5bc0de 5px center no-repeat;
	position: relative;
	padding: 8px 8px 8px 35px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px #CCC;
	min-height: 20px;
	margin-top: 10px;
	margin-bottom: 15px;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	display: none;
	max-width: 325px;  optionally, set a max-width 
}

.field-info::before {
        content: "";
        width: 0px;
        height: 0px;
        border: 0.8em solid transparent;
        position: absolute;
        bottom: 35px;
        border-bottom: 10px solid #5bc0de;
    }
	
</style>


  <cfset var_netid = ''>
  <cfset var_classyr = ''>
  <cfset msg = ''>
   
    
    <cfif isDefined('form.netid') and form.netid GT ''>
           <cfquery name="get_max" datasource="#request.main#">
                Select max(id) as max_id From TBW_REQUESTS
            </cfquery>
            <cfif isDefined("get_max.max_id") and get_max.max_id GT ''>
                <cfset var_id = #get_max.max_id# + 1>
            <cfelse>
                <cfset var_id = 1>
             </cfif>
            
          <cfset var_netid = #form.netid#>
          <cfset var_classyr = #form.classyear#>
          <cfset var_timedate = #Now()#>
          
          <cfquery name="logrequest" datasource="#request.main#">
            Insert into TBW_REQUESTS 
                (id, netid, classyear, request_date) 
            Values 
                (<cfqueryparam value="#var_id#" cfsqltype="cf_sql_integer">, 
                <cfqueryparam value="#var_netid#" cfsqltype="cf_sql_varchar">, 
                <cfqueryparam value="#var_classyr#" cfsqltype="cf_sql_integer">, 
                <cfqueryparam value="#var_timedate#" cfsqltype="cf_sql_timestamp">)
          </cfquery>
          
           <cfmail to="cornell@electionservicescorp.com"
           		from="alumniwebmaster@cornell.edu"
                subject="Cornell University: Ballot request #var_id#"
                type="html">
                To: Ballot Services<br />
                
                User #form.netid# class of #form.classyear# requested a new ballot based on their preference on record on #DateTimeFormat(var_timedate, "mm/dd/yyyy hh:nn:ss")#.
          </cfmail>
           <cfset ballot_req = 'Sent'> 
           <cfset msg = "">
           <cfset var_netid = ''>
 		   <cfset var_classyr = ''>   

   </cfif>

<cfoutput>

<cfif isDefined("ballot_req") and ballot_req EQ 'Sent'>
    <div class="form-wrap">

<fieldset>
<legend>Request A New Ballot</legend>
    <div width="100%">
    	<img src="images/green-hook.png" style="display:block; margin-left:38%; margin-bottom: 20px;"/>
    </div>
    <p>Your ballot request has been successfully sent.</p>
  </fieldset>
    </div>
  
<cfelse>

    <div class="form-wrap">
    <cfform id="BallotForm" action="#CGI.SCRIPT_NAME#" method="post">
    <fieldset>
    <legend>Request A New Ballot</legend>
        <cfif isDefined('msg') and msg GT ''>
        <p><font color="red">#msg#</font></p></cfif>
        <div class="tooltip">
          <img src="images/Info_icon.png" width="15px" style="margin:0;"/>
          <span class="tooltiptext">Don't know your NetID?<a tabindex="-1" target="_blank" href="http://www.cornell.edu/search/people.cfm" > Search for your name in the Cornell directory.</a></span>
        </div>
        <label><span>What is your NetID?</span></label>
        <div class="field">
          <cfinput type="text" id="netID" name="netID" placeholder="abc123" value="#var_netid#" REQUIRED="Yes">
		   <div class="checkmark" id="id-check"><img  src="images/green_check.png" width="20" height="20"></div>
          <div style="clear:both;"></div>
          <div class="field-validation-error" id="netIDMsg"><span for="netID"></span></div>
        </div>
         <br/>
        <label><span>What is your Preferred Class Year?</span></label><br>
        <div class="field">
      	  <cfinput type="Text" id="classYear" name="classyear" value="#var_classyr#" placeholder="yy or yyyy" validate="integer" maxlength="4" required="Yes"> 
      	  <div class="checkmark" id="year-check"><img src="images/green_check.png" width="20" height="20"></div>
          <div style="clear:both;"></div>
           <div class="field-validation-error" id="yearMsg"><span for="classYear">Please enter a valid two or four digit year.</span></div>
        </div>
        <br />
      <input tabindex="-1" style="margin-top: 20px;" type="Submit" id="ballot_submit" name="ballot_submit" onclick="pageTracker._trackEvent('Request Submit', 'Click', 'Trustee Ballot Request Submit');"> <input type="RESET"> 
      </fieldset>
    </cfform>
    </div>
</cfif>

 </cfoutput>
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>

<script>
$(window).bind("pageshow", function() {
    var form = $('#BallotForm'); 
     let the browser natively reset defaults
    form[0].reset();
});
var currentyear = new Date().getFullYear();
var idcheck = false;
var yearcheck = false;
$('#netID').on("blur", function()  {
		$("#netIDMsg").hide();
		$("#id-check").hide();
		idcheck = false;
NetID should start with 2-3 digits letters and 1-5 digits numbers
    var pattern = /^[a-zA-Z]{2,3}\d{1,5}$/;
    var netID = $(this).val();
	var result = netID.match(pattern); 
	if (result==null) {
		$("#netIDMsg span").text("Please enter your NetID.");
		$("#netIDMsg").show();
		idcheck = false;
		return false;	
	} else {
		$.ajax({
			  type: 'GET',
			  url: "NetIDcheck.cfc?method=ldapLookupByNetID",
			  data: {
				netid: netID 
			  },
			  success: function (data){
				  xmlDoc = $.parseXML(data);
				  var idcount = $(xmlDoc).find("string").text();
				  if (idcount == '0' ){
					    $("#netIDMsg span").text("This netid  does not exist.");
					  	$("#netIDMsg").show();
						idcheck = false;
						return false;			  
				  }else {
					  	$("#id-check").show();
						idcheck = true;
						return true;	
				  }
			  }   
			});
	}
});
$('#classYear').on("blur", function()  {
		$("#yearMsg").hide();
		$("#year-check").hide();
		yearcheck = false;

    var pattern2 = /^\d{2}$/;
	var pattern4 = /^(19|20)\d{2}$/;
    var year = $(this).val();
	var result2 = year.match(pattern2); 
	var result4 = year.match(pattern4);
	if (result2!=null) {
		$("#year-check").show();
		yearcheck = true;
		return true;
	}
	else if (result4!=null && year > 1900 && year < (currentyear+5)) {
		$("#year-check").show();
		 yearcheck = true;
			return true;
	}
	else{
		$("#yearMsg").show();
		yearcheck = false;
		return false;	
	}
});
$('#ballot_submit').click(function (e) {
	e.preventDefault();
	if (idcheck == false && yearcheck == true) {
		$("#netIDMsg").show();
		return false;	
	} else if (idcheck == false && yearcheck == false) {
		$("#netIDMsg").show();
		$("#yearMsg").show();
		return false;
	} else if(idcheck == true && yearcheck == false) {
		$("#yearMsg").show();
		return false;
	} else {
		$('#BallotForm').submit();
	}
})
</script>--->
<!---End of ballot widget--->


<style type="text/css">
<!--
.style1 {font-size: 15px}
-->
</style>
<h2><a href="https://www.giving.cornell.edu/give/?gifttype=1&gifttype2=4&refer_code=AAWeb"><img src="img/GivingButton.png" alt="Give Now" width="179" height="75" border="0"></a></h2>
<h2>Current Alumni-Elected Trustees</h2>
<ul>
  <li><a href="allen.cfm">Sheila Wilson Allen '76, DVM '81</a></li>
  <li><a href="everett.cfm">Elizabeth Everett '97</a></li>
  <li><a href="fox.cfm">Stephanie Keene Fox '89</a></li>
  <li><a href="gadsby.cfm">Linda Marcelle Gadsby '88</a></li>
  <li><a href="james.cfm">Katrina E. James  '96</a></li>
  <li><a href="marrone.cfm">Pamela G. Marrone '78</a></li>
  <li><a href="poe.cfm">Jonathan K. Poe '82</a></li>
  <li><a href="troy.cfm">Michael Troy '81</a></li>  
</ul>
<h2>Learn More</h2>
<ul>
  
  <li><a href="https://trustees.cornell.edu/" target="_blank">Cornell Board of Trustees</a></li>
  <li><a href="documents/Committee on Alumni Trustee Nominations List_2017-18.pdf" target="_blank">Cornell Committee on  Alumni Trustee Nominations</a></li>
  <li><a href="documents/ReportoftheTaskForceonAlumniTrusteeElections.pdf" target="_blank">Report of the Task Force on Alumni Trustee Elections</a></li>
  <li> <a href="documents/TrusteeMailer_BOTlist.pdf" target="_blank">Trustee Charter Provision for Membership, Responsibilities, <br>
  and            Member Listing</a></li>
</ul>
<h2>Contact</h2>
<p>Loreal Maguire<br />
  <a href="mailto:llm94@cornell.edu">llm94@cornell.edu</a><br />
607-255-2960</p>
