<cfset fileName= "#expandPath(".")##createUUID()#.pdf">


<cfhtmltopdf source="http://www.csszengarden.com/?cssfile=212/212.css"
	destination="#filename#" overwrite="yes" unit="in" pageType="Letter"
	margintop="1.5" marginbottom="1" marginLeft="1" marginRight="1">
</cfhtmltopdf>


<cffile action="readbinary" file="#fileName#" variable="mypdf" >
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />