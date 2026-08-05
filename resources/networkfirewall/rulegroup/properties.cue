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

#GeneratedRulesType: "ALLOWLIST" | "DENYLIST" | "ALERTLIST" | "REJECTLIST"

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

#Port: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(1024)

#PortRange: {
	FromPort: #PortRangeBound
	ToPort: #PortRangeBound
}

#PortRangeBound: int & >=0 & <=65535

#PortSet: {
	Definition?: [...#VariableDefinition]
}

#ProtocolNumber: int & >=0 & <=255

#PublishMetricAction: {
	Dimensions: [...#Dimension]
}

#ReferenceSets: {
	IPSetReferences?: {...}
}

#ResourceArn: string & =~"^(arn:aws.*)$" & strings.MinRunes(1) & strings.MaxRunes(256)

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

#RuleOrder: "DEFAULT_ACTION_ORDER" | "STRICT_ORDER"

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

#RulesString: string & strings.MinRunes(0) & strings.MaxRunes(1000000)

#Setting: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(8192)

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

#SummaryRuleOption: "SID" | "MSG" | "METADATA"

#TCPFlag: "FIN" | "SYN" | "RST" | "PSH" | "ACK" | "URG" | "ECE" | "CWR"

#TCPFlagField: {
	Flags: [...#TCPFlag]
	Masks?: [...#TCPFlag]
}

#Tag: {
	Key: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(255)
}

#TargetType: "TLS_SNI" | "HTTP_HOST"

#VariableDefinition: string & =~"^.*$" & strings.MinRunes(1)
