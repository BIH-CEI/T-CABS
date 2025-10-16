<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MdsDevice
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Device</sch:title>
    <sch:rule context="f:Device">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operator']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operator': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-hours']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-hours': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-hours']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-hours': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-cycles']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-cycles': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-mode']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/uv/pocd/StructureDefinition/operating-mode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:manufacturer) &gt;= 1">manufacturer: minimum cardinality of 'manufacturer' is 1</sch:assert>
      <sch:assert test="count(f:serialNumber) &gt;= 1">serialNumber: minimum cardinality of 'serialNumber' is 1</sch:assert>
      <sch:assert test="count(f:patient) &gt;= 1">patient: minimum cardinality of 'patient' is 1</sch:assert>
      <sch:assert test="count(f:owner) &gt;= 1">owner: minimum cardinality of 'owner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
