package configurationseteventdestination

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::PinpointEmail::ConfigurationSetEventDestination
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PinpointEmail::ConfigurationSetEventDestination"
	Properties: #Properties
}
