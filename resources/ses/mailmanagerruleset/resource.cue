package mailmanagerruleset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SES::MailManagerRuleSet Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MailManagerRuleSet"
	Properties: #Properties
}
