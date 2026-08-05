package devicedefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::DeviceDefinition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::DeviceDefinition"
	Properties: #Properties
}
