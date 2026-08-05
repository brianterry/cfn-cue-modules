package system

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a system that represents a logical grouping of services.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResilienceHubV2::System"
	Properties: #Properties
}
