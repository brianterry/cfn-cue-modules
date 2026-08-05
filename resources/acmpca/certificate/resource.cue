package certificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::ACMPCA::Certificate`` resource is used to issue a certificate using your private certificate authority. For more information, see the [IssueCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html) action.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ACMPCA::Certificate"
	Properties: #Properties
}
