package loggerdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::LoggerDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::LoggerDefinition"
	Properties: #Properties
}
