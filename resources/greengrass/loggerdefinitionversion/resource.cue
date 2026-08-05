package loggerdefinitionversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::LoggerDefinitionVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::LoggerDefinitionVersion"
	Properties: #Properties
}
