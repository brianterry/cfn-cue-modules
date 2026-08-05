package userpoolregionalconfigurationattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolRegionalConfigurationAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolRegionalConfigurationAttachment"
	Properties: #Properties
}
