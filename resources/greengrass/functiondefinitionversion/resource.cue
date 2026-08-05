package functiondefinitionversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::FunctionDefinitionVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::FunctionDefinitionVersion"
	Properties: #Properties
}
