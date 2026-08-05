package devicedefinitionversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::DeviceDefinitionVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::DeviceDefinitionVersion"
	Properties: #Properties
}
