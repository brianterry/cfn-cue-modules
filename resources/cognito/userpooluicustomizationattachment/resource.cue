package userpooluicustomizationattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::UserPoolUICustomizationAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::UserPoolUICustomizationAttachment"
	Properties: #Properties
}
