package thing

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoT::Thing
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::Thing"
	Properties: #Properties
}
