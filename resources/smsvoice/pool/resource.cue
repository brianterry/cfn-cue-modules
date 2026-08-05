package pool

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SMSVOICE::Pool
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SMSVOICE::Pool"
	Properties: #Properties
}
