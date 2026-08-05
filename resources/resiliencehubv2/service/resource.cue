package service

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a resilience-managed service with associated systems, input sources, assertions, and service functions.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResilienceHubV2::Service"
	Properties: #Properties
}
