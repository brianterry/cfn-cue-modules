package functiondefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::FunctionDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::FunctionDefinition"
	Properties: #Properties
}
