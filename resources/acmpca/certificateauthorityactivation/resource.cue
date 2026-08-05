package certificateauthorityactivation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Used to install the certificate authority certificate and update the certificate authority status.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ACMPCA::CertificateAuthorityActivation"
	Properties: #Properties
}
