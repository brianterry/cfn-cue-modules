package mailmanageringresspoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SES::MailManagerIngressPoint Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MailManagerIngressPoint"
	Properties: #Properties
}
