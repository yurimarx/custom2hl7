Class custom2hl7.PatientDTL Extends Ens.DataTransformDTL [ DependsOn = (custom2hl7.PatientMapper.Record, EnsLib.HL7.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='custom2hl7.PatientMapper.Record' targetClass='EnsLib.HL7.Message' targetDocType='2.8:ADT_A01' create='new' language='objectscript' >
<assign value='"|"' property='target.{MSH:FieldSeparator}' action='set' />
<assign value='"UTF-8"' property='target.{MSH:EncodingCharacters}' action='set' />
<assign value='"dc.custom2hl7"' property='target.{MSH:SendingApplication.NamespaceID}' action='set' />
<assign value='"dc.custom2hl7"' property='target.{MSH:SendingFacility.NamespaceID}' action='set' />
<assign value='"dc.custom2hl7"' property='target.{MSH:ReceivingApplication.NamespaceID}' action='set' />
<assign value='"custom2hl7"' property='target.{MSH:ReceivingApplication.UniversalID}' action='set' />
<assign value='0001001' property='target.{MSH:SendingFacility.UniversalIDType}' action='set' />
<assign value='0001001' property='target.{MSH:ReceivingApplication.UniversalIDType}' action='set' />
<assign value='..ConvertDateTime("2023-10-24")' property='target.{MSH:DateTimeofMessage}' action='set' />
<assign value='"ADT"' property='target.{MSH:MessageType.MessageCode}' action='set' />
<assign value='"A01"' property='target.{MSH:MessageType.TriggerEvent}' action='set' />
<assign value='"ADT_A01"' property='target.{MSH:MessageType.MessageStructure}' action='set' />
<assign value='"000001"' property='target.{MSH:MessageControlID}' action='set' />
<assign value='"P"' property='target.{MSH:ProcessingID.ProcessingID}' action='set' />
<assign value='"I"' property='target.{MSH:ProcessingID.ProcessingMode}' action='set' />
<assign value='"2.8"' property='target.{MSH:VersionID.VersionID}' action='set' />
<assign value='"ADT_A01"' property='target.{EVN:EventTypeCode}' action='set' />
<assign value='..ConvertDateTime("2023-10-24")' property='target.{EVN:RecordedDateTime}' action='set' />
<assign value='"Hopkings Hospital"' property='target.{MSH:SendingFacility.UniversalID}' action='set' />
<assign value='source.Id' property='target.{PID:PatientID}' action='set' />
<assign value='"custom2hl7"' property='target.{MSH:SendingApplication.UniversalID}' action='set' />
<assign value='source.SSN' property='target.{PID:PatientIdentifierList().IDNumber}' action='set' />
<assign value='"SS"' property='target.{PID:PatientIdentifierList().IdentifierTypeCode}' action='set' />
<assign value='source.FIRST' property='target.{PID:PatientName().GivenName}' action='set' />
<assign value='source.LAST' property='target.{PID:PatientName().FamilyName.Surname}' action='set' />
<assign value='source.SUFFIX' property='target.{PID:PatientName().Suffix}' action='set' />
<assign value='source.MAIDEN' property='target.{PID:PatientName().FamilyName.OwnSurname}' action='set' />
<assign value='source.PREFIX' property='target.{PID:PatientName().Prefix}' action='set' />
<assign value='source.BIRTHDATE' property='target.{PID:DateTimeofBirth}' action='set' />
<assign value='source.RACE' property='target.{PID:Race().Text}' action='set' />
<assign value='source.SSN' property='target.{PID:SSNNumberPatient}' action='set' />
<assign value='source.DRIVERS' property='target.{PID:DriversLicenseNumberPatient}' action='set' />
<assign value='source.ETHNICITY' property='target.{PID:EthnicGroup().Text}' action='set' />
<assign value='source.GENDER' property='target.{PID:AdministrativeSex.Text}' action='set' />
<assign value='source.MARITAL' property='target.{PID:MaritalStatus.Text}' action='set' />
<assign value='source.BIRTHPLACE' property='target.{PID:BirthPlace}' action='set' />
<assign value='source.CITY' property='target.{PID:PatientAddress().City}' action='set' />
<assign value='source.ADDRESS' property='target.{PID:PatientAddress().StreetAddress.StreetName}' action='set' />
<assign value='source.STATE' property='target.{PID:PatientAddress().StateorProvince}' action='set' />
<assign value='source.ZIP' property='target.{PID:PatientAddress().ZiporPostalCode}' action='set' />
<assign value='source.COUNTY' property='target.{PID:PatientAddress().CountyParishCode.Text}' action='set' />
<assign value='source.LAT_"/"_source.LON' property='target.{PID:PatientAddress().OtherDesignation}' action='set' />
<assign value='"Not Applicable"' property='target.{PV1:PatientClass.Text}' action='set' />
<assign value='"000001"' property='target.{MSH:SendingApplication.UniversalIDType}' action='set' />
</transform>
}

}
