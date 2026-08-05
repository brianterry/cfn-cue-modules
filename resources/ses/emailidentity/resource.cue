package emailidentity

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::EmailIdentity
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::EmailIdentity"
	Properties: #Properties
}
