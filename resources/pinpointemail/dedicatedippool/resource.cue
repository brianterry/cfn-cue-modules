package dedicatedippool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::PinpointEmail::DedicatedIpPool
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PinpointEmail::DedicatedIpPool"
	Properties: #Properties
}
