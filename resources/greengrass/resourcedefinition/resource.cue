package resourcedefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::ResourceDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::ResourceDefinition"
	Properties: #Properties
}
