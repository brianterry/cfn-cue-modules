package mailmanageraddoninstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SES::MailManagerAddonInstance Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MailManagerAddonInstance"
	Properties: #Properties
}
