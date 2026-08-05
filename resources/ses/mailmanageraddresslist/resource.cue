package mailmanageraddresslist

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SES::MailManagerAddressList Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MailManagerAddressList"
	Properties: #Properties
}
