package servicefunction

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a service function within a Resilience Hub service.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResilienceHubV2::ServiceFunction"
	Properties: #Properties
}
