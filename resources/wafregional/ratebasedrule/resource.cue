package ratebasedrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::RateBasedRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::RateBasedRule"
	Properties: #Properties
}
