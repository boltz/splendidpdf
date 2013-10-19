<cfset fileName= "#expandPath(".")##createUUID()#.pdf">

<cfhtmltopdf source="http://www.csszengarden.com/?cssfile=212/212.css"
destination="#filename#" overwrite="yes" unit="in" pageType="Letter">
	<cfhtmltopdfitem type="header" image="#expandPath(".")#/image/new52.jpeg">
</cfhtmltopdf>

<cffile action="readbinary" file="#fileName#" variable="mypdf" >

<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" /> 