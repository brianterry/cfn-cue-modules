package consumableresource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Batch::ConsumableResource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Batch::ConsumableResource"
	Properties: #Properties
}
