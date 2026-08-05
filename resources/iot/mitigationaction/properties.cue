package mitigationaction

import "strings"

#Properties: {
	// A unique identifier for the mitigation action.
	ActionName?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	ActionParams: #ActionParams
	RoleArn: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#ActionParams: {
	AddThingsToThingGroupParams?: #AddThingsToThingGroupParams
	EnableIoTLoggingParams?: #EnableIoTLoggingParams
	PublishFindingToSnsParams?: #PublishFindingToSnsParams
	ReplaceDefaultPolicyVersionParams?: #ReplaceDefaultPolicyVersionParams
	UpdateCACertificateParams?: #UpdateCACertificateParams
	UpdateDeviceCertificateParams?: #UpdateDeviceCertificateParams
}

#AddThingsToThingGroupParams: {
	// Specifies if this mitigation action can move the things that triggered the mitigation action out of one or more dynamic thing groups.
	OverrideDynamicGroups?: bool
	// The list of groups to which you want to add the things that triggered the mitigation action.
	ThingGroupNames: [...string & strings.MinRunes(1) & strings.MaxRunes(128)]
}

#EnableIoTLoggingParams: {
	// Specifies which types of information are logged.
	LogLevel: "DEBUG" | "INFO" | "ERROR" | "WARN" | "UNSET_VALUE"
	// The ARN of the IAM role used for logging.
	RoleArnForLogging: string & strings.MinRunes(11) & strings.MaxRunes(2048)
}

#PublishFindingToSnsParams: {
	// The ARN of the topic to which you want to publish the findings.
	TopicArn: string & strings.MinRunes(11) & strings.MaxRunes(2048)
}

#ReplaceDefaultPolicyVersionParams: {
	TemplateName: "BLANK_POLICY" | "UNSET_VALUE"
}

#Tag: {
	// The tag's key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#UpdateCACertificateParams: {
	Action: "DEACTIVATE" | "UNSET_VALUE"
}

#UpdateDeviceCertificateParams: {
	Action: "DEACTIVATE" | "UNSET_VALUE"
}
