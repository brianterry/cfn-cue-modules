package owner

import "github.com/brianterry/cfn-cue-modules/cfn"

// A owner can set up authorization permissions on their resources.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::Owner"
	Properties: #Properties
}
