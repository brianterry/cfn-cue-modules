package mailmanagertrafficpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::SES::MailManagerTrafficPolicy Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::MailManagerTrafficPolicy"
	Properties: #Properties
}
