package customverificationemailtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::CustomVerificationEmailTemplate.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::CustomVerificationEmailTemplate"
	Properties: #Properties
}
