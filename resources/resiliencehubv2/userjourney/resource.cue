package userjourney

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a user journey within a Resilience Hub system.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResilienceHubV2::UserJourney"
	Properties: #Properties
}
