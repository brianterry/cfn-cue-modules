package managedloginbranding

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Cognito::ManagedLoginBranding
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Cognito::ManagedLoginBranding"
	Properties: #Properties
}
