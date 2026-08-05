package coredefinitionversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::CoreDefinitionVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::CoreDefinitionVersion"
	Properties: #Properties
}
