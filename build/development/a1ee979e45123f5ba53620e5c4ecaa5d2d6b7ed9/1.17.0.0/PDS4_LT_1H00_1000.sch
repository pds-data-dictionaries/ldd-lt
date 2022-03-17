<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:lt  Version:1.0.0.0 - Thu Mar 17 19:20:00 UTC 2022 -->
  <!-- Generated from the PDS4 Information Model Version 1.17.0.0 - System Build 12.0 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/lt/v1" prefix="lt"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="lt:HVM3_Parameters/lt:hvm3_example2_text_attribute_withvalues">
      <sch:assert test=". = ('Ethel', 'Fred', 'Lucy', 'Ricky')">
        <title>lt:HVM3_Parameters/lt:hvm3_example2_text_attribute_withvalues/lt:hvm3_example2_text_attribute_withvalues</title>
        The attribute lt:HVM3_Parameters/lt:hvm3_example2_text_attribute_withvalues must be equal to one of the following values 'Ethel', 'Fred', 'Lucy', 'Ricky'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lt:LTM_Parameters/lt:ltm_example3_realnumber">
      <sch:assert test="@unit = ('AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm')">
        <title>lt:LTM_Parameters/lt:ltm_example3_realnumber/lt:ltm_example3_realnumber</title>
        The attribute @unit must be equal to one of the following values 'AU', 'Angstrom', 'cm', 'km', 'm', 'micrometer', 'mm', 'nm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lt:LTM_Parameters/lt:ltm_example4_integer">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lt:LTM_Parameters/lt:ltm_example4_integer/lt:ltm_example4_integer</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lt:Observation_Information/lt:mission_phase_name">
      <sch:assert test=". = ('ATLO', 'Active Mission', 'Cruise', 'Development', 'Test')">
        <title>lt:Observation_Information/lt:mission_phase_name/lt:mission_phase_name</title>
        The attribute lt:Observation_Information/lt:mission_phase_name must be equal to one of the following values 'ATLO', 'Active Mission', 'Cruise', 'Development', 'Test'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/lt:Observation_Information">
      <sch:assert test="if ( (lt:spacecraft_clock_partition) 
                    or (contains(lt:spacecraft_clock_start, '/')) 
                    or ( (not (lt:spacecraft_clock_partition)) and (not (lt:spacecraft_clock_start)) ) ) 
                 then true() else false()
      ">
        <title>lt_time_rules/Rule</title>
        lt:error:sclk_rule_0: If lt:spacecraft_clock_start is
        present, it must begin with a partition number followed by a forward slash, OR the partition number must be given by
        lt:spacecraft_clock_partition. </sch:assert>
      <sch:assert test="if ( (lt:spacecraft_clock_partition) 
                    or (contains(lt:spacecraft_clock_stop, '/')) 
                    or ( (not (lt:spacecraft_clock_partition)) and (not (lt:spacecraft_clock_stop)) ) ) 
                 then true() else false()
      ">
        <title>lt_time_rules/Rule</title>
        lt:error:sclk_rule_1: If lt:spacecraft_clock_stop is
        present, it must begin with a partition number followed by a forward slash, OR the partition number must be given by
        lt:spacecraft_clock_partition. </sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
