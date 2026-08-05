package mailmanageraddonsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SES::MailManagerAddonSubscription Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MailManagerAddonSubscription"
	Properties: #Properties
}
