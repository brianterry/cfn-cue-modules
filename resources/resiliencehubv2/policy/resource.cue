package policy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a resilience policy that defines availability and disaster recovery requirements.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResilienceHubV2::Policy"
	Properties: #Properties
}
