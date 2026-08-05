package rulegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Contains the Rules that identify the requests that you want to allow, block, or count. In a RuleGroup, you also specify a default action (ALLOW or BLOCK), and the action for each Rule that you add to a RuleGroup, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the RuleGroup with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one Rule to a RuleGroup, a request needs to match only one of the specifications to be allowed, blocked, or counted.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFv2::RuleGroup"
	Properties: #Properties
}
