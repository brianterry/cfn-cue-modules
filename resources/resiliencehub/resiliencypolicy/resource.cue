package resiliencypolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for Resiliency Policy.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResilienceHub::ResiliencyPolicy"
	Properties: #Properties
}
