<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    
    <sch:pattern id="check-refs-to-xmlids">
        <sch:let name="doyleColl" value="collection('conan-doyle/?select=*.xml')"/> 
        <sch:let name="xmlids" value="$doyleColl//text//@xml:id"/>
        <sch:rule context="ln[@pull]">
            <sch:assert test="substring-after(@pull, '#') = $xmlids">The pull attribute must resolve to an xml:id in a Conan Doyle document.</sch:assert>
        </sch:rule>

    </sch:pattern>
    
</sch:schema>