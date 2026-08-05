package phonenumber

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::PhoneNumber
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::PhoneNumber"
	Properties: #Properties
}
