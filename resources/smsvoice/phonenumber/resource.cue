package phonenumber

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SMSVOICE::PhoneNumber
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SMSVOICE::PhoneNumber"
	Properties: #Properties
}
