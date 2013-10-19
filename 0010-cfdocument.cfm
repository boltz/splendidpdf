<cfset fileName= "#expandPath(".")##createUUID()#.pdf">

<cfdocument format="PDF" src="http://www.csszengarden.com/?cssfile=212/212.css" filename="#fileName#">
</cfdocument>
<cffile action="readbinary" file="#fileName#" variable="mypdf" >
<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" />