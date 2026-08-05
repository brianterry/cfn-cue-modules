package thingtype

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::ThingType
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::ThingType"
	Properties: #Properties
}
