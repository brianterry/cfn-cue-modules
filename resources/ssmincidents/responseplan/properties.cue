package responseplan

import "strings"

#Properties: {
	// The list of actions.
	Actions?: [...#Action]
	ChatChannel?: #ChatChannel
	// The display name of the response plan.
	DisplayName?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// The list of engagements to use.
	Engagements?: [...#SSMContact]
	IncidentTemplate: #IncidentTemplate
	// The list of integrations.
	Integrations?: [...#Integration]
	// The name of the response plan.
	Name: string & =~"^[a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// The tags to apply to the response plan.
	Tags?: [...#Tag]
}

#Action: {
	SsmAutomation?: #SsmAutomation
}

#ChatChannel: {
	ChatbotSns?: #ChatbotSns
}

#ChatbotSns: [...#SnsArn]

#DynamicSsmParameter: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(50)
	Value: #DynamicSsmParameterValue
}

#DynamicSsmParameterValue: {
	Variable?: #VariableType
}

#IncidentTemplate: {
	// The deduplication string.
	DedupeString?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The impact value.
	Impact: int & >=1 & <=5
	// Tags that get applied to incidents created by the StartIncident API action.
	IncidentTags?: [...#Tag]
	// The list of notification targets.
	NotificationTargets?: [...#NotificationTargetItem]
	// The summary string.
	Summary?: string & strings.MinRunes(1) & strings.MaxRunes(4000)
	// The title string.
	Title: string & strings.MaxRunes(200)
}

#Integration: {
	PagerDutyConfiguration?: #PagerDutyConfiguration
}

#NotificationTargetItem: {
	SnsTopicArn?: #SnsArn
}

#PagerDutyConfiguration: {
	// The name of the pagerDuty configuration.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(200)
	PagerDutyIncidentConfiguration: #PagerDutyIncidentConfiguration
	// The AWS secrets manager secretId storing the pagerDuty token.
	SecretId: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#PagerDutyIncidentConfiguration: {
	// The pagerDuty serviceId.
	ServiceId: string & strings.MinRunes(1) & strings.MaxRunes(200)
}

#SSMContact: string & =~"^arn:aws(-(cn|us-gov))?:ssm-contacts:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$" & strings.MaxRunes(1000)

#SnsArn: string & =~"^arn:aws(-(cn|us-gov))?:sns:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$" & strings.MaxRunes(1000)

#SsmAutomation: {
	// The document name to use when starting the SSM automation document.
	DocumentName: string & strings.MaxRunes(128)
	// The version of the document to use when starting the SSM automation document.
	DocumentVersion?: string & strings.MaxRunes(128)
	// The parameters with dynamic values to set when starting the SSM automation document.
	DynamicParameters?: [...#DynamicSsmParameter]
	// The parameters to set when starting the SSM automation document.
	Parameters?: [...#SsmParameter]
	// The role ARN to use when starting the SSM automation document.
	RoleArn: string & =~"^arn:aws(-(cn|us-gov))?:[a-z-]+:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$" & strings.MaxRunes(1000)
	// The account type to use when starting the SSM automation document.
	TargetAccount?: "IMPACTED_ACCOUNT" | "RESPONSE_PLAN_OWNER_ACCOUNT"
}

#SsmParameter: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(50)
	Values: [...#SsmParameterValue]
}

#SsmParameterValue: string & strings.MaxRunes(10000)

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#VariableType: "INCIDENT_RECORD_ARN" | "INVOLVED_RESOURCES"
