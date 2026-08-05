package targetaccountconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::FIS::TargetAccountConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FIS::TargetAccountConfiguration"
	Properties: #Properties
}
