package mailmanagerarchive

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SES::MailManagerArchive Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MailManagerArchive"
	Properties: #Properties
}
