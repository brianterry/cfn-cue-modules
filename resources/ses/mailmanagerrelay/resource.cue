package mailmanagerrelay

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SES::MailManagerRelay Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MailManagerRelay"
	Properties: #Properties
}
