package securityprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// A security profile defines a set of expected behaviors for devices in your account.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::SecurityProfile"
	Properties: #Properties
}
