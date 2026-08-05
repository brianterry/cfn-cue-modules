package alias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::PaymentCryptography::Alias Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PaymentCryptography::Alias"
	Properties: #Properties
}
