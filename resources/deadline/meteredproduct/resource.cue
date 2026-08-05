package meteredproduct

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::MeteredProduct
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::MeteredProduct"
	Properties: #Properties
}
