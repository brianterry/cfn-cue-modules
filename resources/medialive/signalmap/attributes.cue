package signalmap

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A signal map's ARN (Amazon Resource Name)
	Arn: string & =~"^arn:.+:medialive:.+:signal-map:.+$"
	CloudWatchAlarmTemplateGroupIds: [...string & =~"^(aws-)?[0-9]{7}$" & strings.MinRunes(7) & strings.MaxRunes(11)]
	CreatedAt: string
	// Error message associated with a failed creation or failed update attempt of a signal map.
	ErrorMessage: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	EventBridgeRuleTemplateGroupIds: [...string & =~"^(aws-)?[0-9]{7}$" & strings.MinRunes(7) & strings.MaxRunes(11)]
	FailedMediaResourceMap: #FailedMediaResourceMap
	// A signal map's id.
	Id: string & =~"^(aws-)?[0-9]{7}$" & strings.MinRunes(7) & strings.MaxRunes(11)
	Identifier: string
	LastDiscoveredAt: string
	LastSuccessfulMonitorDeployment: #SuccessfulMonitorDeployment
	MediaResourceMap: #MediaResourceMap
	ModifiedAt: string
	// If true, there are pending monitor changes for this signal map that can be deployed.
	MonitorChangesPendingDeployment: bool
	MonitorDeployment: #MonitorDeployment
	Status: #SignalMapStatus
}
