package resourcedefinitionversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::ResourceDefinitionVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::ResourceDefinitionVersion"
	Properties: #Properties
}
