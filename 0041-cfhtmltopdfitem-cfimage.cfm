<!--- Create an image that is 200-pixels square. ---> 
<cfset myImage=ImageNew("",200,200)> 
<!--- Draw a circle that is 100 pixels in diameter. ---> 
<cfset ImageDrawOval(myImage,40,20,100,100)> 
<!--- Draw a filled rectangle that is 40 pixels wide and 20 pixels high. 
---> 
<cfset ImageDrawRect(myImage,70,50,40,20,true)> 
<!--- Draw a 100-pixel square. ---> 
<cfset ImageDrawRect(myImage,40,40,100,100)> 
<!--- Draw two lines. ---> 
<cfset ImageDrawLine(myImage,130,40,100,200)> 
<cfset ImageDrawLine(myImage,50,40,100,200)> 

<cfset fileName= "#expandPath(".")##createUUID()#.pdf">

<cfhtmltopdf source="http://www.csszengarden.com/?cssfile=212/212.css"
destination="#filename#" overwrite="yes" unit="in" pageType="Letter">
	<cfhtmltopdfitem type="header" image="http://www.cheatswhiz.com/wp-content/themes/cheatswhiz/images/header/headers.jpg" align="right">

	</cfhtmltopdfitem>
	
	<cfhtmltopdfitem type="footer" image="#myimage#" numberformat="LOWERCASEROMAN">
		<p>Hello</p>
	</cfhtmltopdfitem>
</cfhtmltopdf>

<cffile action="readbinary" file="#fileName#" variable="mypdf" >

<cfcontent variable="#toBinary(myPDF)#" type="application/pdf" /> 