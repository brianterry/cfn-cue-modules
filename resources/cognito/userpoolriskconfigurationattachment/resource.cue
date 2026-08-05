package userpoolriskconfigurationattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolRiskConfigurationAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolRiskConfigurationAttachment"
	Properties: #Properties
}
