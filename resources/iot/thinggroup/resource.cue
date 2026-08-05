package thinggroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::ThingGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::ThingGroup"
	Properties: #Properties
}
