package firewallpolicy

import "strings"

#Properties: {
	Description?: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(512)
	FirewallPolicy: #FirewallPolicy
	FirewallPolicyName: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Tags?: [...#Tag]
}

#ActionDefinition: {
	PublishMetricAction?: #PublishMetricAction
}

#CustomAction: {
	ActionDefinition: #ActionDefinition
	ActionName: string & =~"^[a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Dimension: {
	Value: string & =~"^[a-zA-Z0-9-_ ]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#FirewallPolicy: {
	EnableTLSSessionHolding?: bool
	PolicyVariables?: {
		RuleVariables?: #RuleVariables
	}
	StatefulDefaultActions?: [...string]
	StatefulEngineOptions?: #StatefulEngineOptions
	StatefulRuleGroupReferences?: [...#StatefulRuleGroupReference]
	StatelessCustomActions?: [...#CustomAction]
	StatelessDefaultActions: [...string]
	StatelessFragmentDefaultActions: [...string]
	StatelessRuleGroupReferences?: [...#StatelessRuleGroupReference]
	TLSInspectionConfigurationArn?: #ResourceArn
}

#IPSet: {
	Definition?: [...#VariableDefinition]
}

#OverrideAction: "DROP_TO_ALERT"

#Priority: int & >=1 & <=65535

#PublishMetricAction: {
	Dimensions: [...#Dimension]
}

#ResourceArn: string & =~"^(arn:aws.*)$" & strings.MinRunes(1) & strings.MaxRunes(256)

#RuleOrder: "DEFAULT_ACTION_ORDER" | "STRICT_ORDER"

#RuleVariables: {...}

#StatefulEngineOptions: {
	FlowTimeouts?: {
		TcpIdleTimeoutSeconds?: int & >=60 & <=6000
	}
	RuleOrder?: #RuleOrder
	StreamExceptionPolicy?: #StreamExceptionPolicy
}

#StatefulRuleGroupOverride: {
	Action?: #OverrideAction
}

#StatefulRuleGroupReference: {
	DeepThreatInspection?: bool
	Override?: #StatefulRuleGroupOverride
	Priority?: #Priority
	ResourceArn: #ResourceArn
}

#StatelessRuleGroupReference: {
	Priority: #Priority
	ResourceArn: #ResourceArn
}

#StreamExceptionPolicy: "DROP" | "CONTINUE" | "REJECT"

#Tag: {
	Key: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(255)
}

#VariableDefinition: string & =~"^.*$" & strings.MinRunes(1)
