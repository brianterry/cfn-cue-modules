package insight

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SecurityHub::Insight resource represents the AWS Security Hub Insight in your account. An AWS Security Hub insight is a collection of related findings.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::Insight"
	Properties: #Properties
}
