package receiptruleset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::ReceiptRuleSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::ReceiptRuleSet"
	Properties: #Properties
}
