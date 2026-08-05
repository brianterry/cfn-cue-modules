package key

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::PaymentCryptography::Key Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::PaymentCryptography::Key"
	Properties: #Properties
}
