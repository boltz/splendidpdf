Log Location:
<br>
C:\ColdFusionSplendor\cfusion\jetty\webapps\PDFgServlet


To turn on:
C:\ColdFusionSplendor\cfusion\jetty\webapps\PDFgServlet\WEB-INF\web.xml

<context-param>
	    <description>EnableLogging logs complete details about pdfg service and conversion request lifecycle. This option needs to be enabled for debugging purpose only. </description> 
	    <param-name>enableLogging</param-name>
	    <param-value>true</param-value>
	</context-param>