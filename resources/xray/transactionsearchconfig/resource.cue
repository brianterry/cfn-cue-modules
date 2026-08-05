package transactionsearchconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// This schema provides construct and validation rules for AWS-XRay TransactionSearchConfig resource parameters.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::XRay::TransactionSearchConfig"
	Properties: #Properties
}
