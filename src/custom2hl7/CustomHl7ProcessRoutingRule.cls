/// 
Class custom2hl7.CustomHl7ProcessRoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="custom2hl7.Custom2hl7Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="CustomFileService"></constraint>
<constraint name="msgClass" value="custom2hl7.PatientMapper.Record"></constraint>
<when condition="1" comment="">
<send transform="custom2hl7.PatientDTL" target="HL7Operation"></send>
</when>
</rule> 
</ruleSet>
</ruleDefinition>
}

}
