package coredefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::CoreDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::CoreDefinition"
	Properties: #Properties
}
