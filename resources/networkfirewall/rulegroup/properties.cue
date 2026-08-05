package rulegroup

import "strings"

#Properties: {
	Capacity: int
	Description?: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(512)
	RuleGroup?: #RuleGroup
	RuleGroupName: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	SummaryConfiguration?: {
		RuleOptions?: [...#SummaryRuleOption]
	}
	Tags?: [...#Tag]
	Type: "STATELESS" | "STATEFUL"
}

#ActionDefinition: {
	PublishMetricAction?: #PublishMetricAction
}

#Address: {
	AddressDefinition: string & =~"^([a-fA-F\\d:\\.]+/\\d{1,3})$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#CustomAction: {
	ActionDefinition: #ActionDefinition
	ActionName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Dimension: {
	Value: string & =~"^[a-zA-Z0-9-_ ]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Header: {
	Destination: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	DestinationPort: #Port
	Direction: "FORWARD" | "ANY"
	Protocol: "IP" | "TCP" | "UDP" | "ICMP" | "HTTP" | "FTP" | "TLS" | "SMB" | "DNS" | "DCERPC" | "SSH" | "SMTP" | "IMAP" | "MSN" | "KRB5" | "IKEV2" | "TFTP" | "NTP" | "DHCP"
	Source: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	SourcePort: #Port
}

#IPSet: {
	Definition?: [...#VariableDefinition]
}

#IPSetReference: {
	ReferenceArn?: #ResourceArn
}

#MatchAttributes: {
	DestinationPorts?: [...#PortRange]
	Destinations?: [...#Address]
	Protocols?: [...#ProtocolNumber]
	SourcePorts?: [...#PortRange]
	Sources?: [...#Address]
	TCPFlags?: [...#TCPFlagField]
}

#PortRange: {
	FromPort: #PortRangeBound
	ToPort: #PortRangeBound
}

#PortSet: {
	Definition?: [...#VariableDefinition]
}

#PublishMetricAction: {
	Dimensions: [...#Dimension]
}

#ReferenceSets: {
	IPSetReferences?: {...}
}

#RuleDefinition: {
	Actions: [...string]
	MatchAttributes: #MatchAttributes
}

#RuleGroup: {
	ReferenceSets?: #ReferenceSets
	RuleVariables?: #RuleVariables
	RulesSource: #RulesSource
	StatefulRuleOptions?: #StatefulRuleOptions
}

#RuleOption: {
	Keyword: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Settings?: [...#Setting]
}

#RuleVariables: {
	IPSets?: {...}
	PortSets?: {...}
}

#RulesSource: {
	RulesSourceList?: #RulesSourceList
	RulesString?: #RulesString
	StatefulRules?: [...#StatefulRule]
	StatelessRulesAndCustomActions?: #StatelessRulesAndCustomActions
}

#RulesSourceList: {
	GeneratedRulesType: #GeneratedRulesType
	TargetTypes: [...#TargetType]
	Targets: [...string]
}

#StatefulRule: {
	Action: "PASS" | "DROP" | "ALERT" | "REJECT"
	Header: #Header
	RuleOptions: [...#RuleOption]
}

#StatefulRuleOptions: {
	RuleOrder?: #RuleOrder
}

#StatelessRule: {
	Priority: int & >=1 & <=65535
	RuleDefinition: #RuleDefinition
}

#StatelessRulesAndCustomActions: {
	CustomActions?: [...#CustomAction]
	StatelessRules: [...#StatelessRule]
}

#TCPFlagField: {
	Flags: [...#TCPFlag]
	Masks?: [...#TCPFlag]
}

#Tag: {
	Key: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(255)
}
