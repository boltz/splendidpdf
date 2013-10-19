<cfpdf action="read" name="ddxPDF" source="LCXMLPDFForm.pdf" >
<cfdump var="#ddxPDF#">

<cfpdf action="read" name="ddxPDF" source="LCStaticPDFForm.pdf" >
<cfdump var="#ddxPDF#">

<cfpdf action="merge" destination="TestMerge.pdf" source="LCXMLPDFForm.pdf,LCStaticPDFForm.pdf" overwrite="yes" >