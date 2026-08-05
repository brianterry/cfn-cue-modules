package taskdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a gateway task definition.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTWireless::TaskDefinition"
	Properties: #Properties
}
