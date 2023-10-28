Class custom2hl7.Custom2hl7Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="custom2hl7.Custom2hl7Production" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="CustomFileService" Category="" ClassName="EnsLib.RecordMap.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="RecordMap">custom2hl7.PatientMapper</Setting>
    <Setting Target="Host" Name="TargetConfigNames">CustomHl7Process</Setting>
    <Setting Target="Adapter" Name="FilePath">/home/irisowner/irisdev/csv/in</Setting>
    <Setting Target="Adapter" Name="ArchivePath">/home/irisowner/irisdev/csv/out</Setting>
    <Setting Target="Adapter" Name="FileSpec">patient3.csv</Setting>
  </Item>
  <Item Name="HL7Operation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">/home/irisowner/irisdev/hl7out/</Setting>
    <Setting Target="Host" Name="SearchTableClass">EnsLib.HL7.SearchTable</Setting>
    <Setting Target="Host" Name="Separators">|</Setting>
  </Item>
  <Item Name="CustomHl7Process" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">custom2hl7.CustomHl7ProcessRoutingRule</Setting>
  </Item>
</Production>
}

}
