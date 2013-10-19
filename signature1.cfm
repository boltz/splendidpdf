<cfpdf action="readsignaturefields" source="#expandPath("./")#certificate-of-awesomeness-unsigned.pdf" name="test" >
<cfdump var="#test#" label="readsig-unsigned">

<cfpdf action="readsignaturefields" source="#expandPath("./")#certificate-of-awesomeness-signed.pdf" name="signed" >
<cfdump var="#signed#" label="readsig-signed">

<cfpdf  action="validatesignature" source="#expandPath("./")#certificate-of-awesomeness-signed.pdf" name="signed" >
<cfdump var="#signed#" label="validatesignature-signed">

<cfpdf action="unsign" source="#expandPath("./")#certificate-of-awesomeness-signed.pdf" 
unsignall="true" destination="#expandPath("./")#force-unsigned.pdf" overwrite="true">

<cfpdf action="readsignaturefields" source="#expandPath("./")#force-unsigned.pdf" name="test" >

	
<cfdump var="#test#" label="readsig-unsigned">

