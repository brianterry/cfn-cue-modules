package thingprincipalattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::ThingPrincipalAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::ThingPrincipalAttachment"
	Properties: #Properties
}
