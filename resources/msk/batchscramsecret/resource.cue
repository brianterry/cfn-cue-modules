package batchscramsecret

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::BatchScramSecret
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::BatchScramSecret"
	Properties: #Properties
}
