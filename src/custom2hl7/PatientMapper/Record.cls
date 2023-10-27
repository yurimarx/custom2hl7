/// THIS IS GENERATED CODE. DO NOT EDIT.<br/>
/// RECORDMAP: Generated from RecordMap 'custom2hl7.PatientMapper'
/// on 2023-10-26 at 12:35:41.865 [2023-10-26 12:35:41.865 UTC]
/// by user _SYSTEM
Class custom2hl7.PatientMapper.Record Extends (%Persistent, %XML.Adaptor, Ens.Request, EnsLib.RecordMap.Base) [ Inheritance = right, ProcedureBlock ]
{

Parameter INCLUDETOPFIELDS = 1;

Property Id As %String;

Property BIRTHDATE As %String;

Property DEATHDATE As %String;

Property SSN As %String;

Property DRIVERS As %String;

Property PASSPORT As %String;

Property PREFIX As %String;

Property FIRST As %String;

Property LAST As %String;

Property SUFFIX As %String;

Property MAIDEN As %String;

Property MARITAL As %String;

Property RACE As %String;

Property ETHNICITY As %String;

Property GENDER As %String;

Property BIRTHPLACE As %String(MAXLEN = 200);

Property ADDRESS As %String(MAXLEN = 200);

Property CITY As %String;

Property STATE As %String;

Property COUNTY As %String;

Property ZIP As %String;

Property LAT As %String;

Property LON As %String;

Property HEALTHCAREEXPENSES As %String;

Property HEALTHCARECOVERAGE As %String (MAXLEn = "") ;

Parameter RECORDMAPGENERATED = 1;

Storage Default
{
<Data name="RecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Id</Value>
</Value>
<Value name="3">
<Value>%Source</Value>
</Value>
<Value name="4">
<Value>DEATHDATE</Value>
</Value>
<Value name="5">
<Value>SSN</Value>
</Value>
<Value name="6">
<Value>DRIVERS</Value>
</Value>
<Value name="7">
<Value>PASSPORT</Value>
</Value>
<Value name="8">
<Value>PREFIX</Value>
</Value>
<Value name="9">
<Value>FIRST</Value>
</Value>
<Value name="10">
<Value>LAST</Value>
</Value>
<Value name="11">
<Value>SUFFIX</Value>
</Value>
<Value name="12">
<Value>MAIDEN</Value>
</Value>
<Value name="13">
<Value>MARITAL</Value>
</Value>
<Value name="14">
<Value>RACE</Value>
</Value>
<Value name="15">
<Value>ETHNICITY</Value>
</Value>
<Value name="16">
<Value>GENDER</Value>
</Value>
<Value name="17">
<Value>BIRTHPLACE</Value>
</Value>
<Value name="18">
<Value>ADDRESS</Value>
</Value>
<Value name="19">
<Value>CITY</Value>
</Value>
<Value name="20">
<Value>STATE</Value>
</Value>
<Value name="21">
<Value>COUNTY</Value>
</Value>
<Value name="22">
<Value>ZIP</Value>
</Value>
<Value name="23">
<Value>LAT</Value>
</Value>
<Value name="24">
<Value>LON</Value>
</Value>
<Value name="25">
<Value>HEALTHCAREEXPENSES</Value>
</Value>
<Value name="26">
<Value>HEALTHCARECOVERAGE</Value>
</Value>
<Value name="27">
<Value>BIRTHDATE</Value>
</Value>
</Data>
<DataLocation>^custom2hl7.PatientMFB06.RecordD</DataLocation>
<DefaultData>RecordDefaultData</DefaultData>
<ExtentSize>2000000</ExtentSize>
<IdLocation>^custom2hl7.PatientMFB06.RecordD</IdLocation>
<IndexLocation>^custom2hl7.PatientMFB06.RecordI</IndexLocation>
<StreamLocation>^custom2hl7.PatientMFB06.RecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
