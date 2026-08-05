package command

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents the resource definition of AWS IoT Command.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::Command"
	Properties: #Properties
}
