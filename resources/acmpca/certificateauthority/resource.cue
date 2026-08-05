package certificateauthority

import "github.com/brianterry/cfn-cue-modules/cfn"

// Private certificate authority.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ACMPCA::CertificateAuthority"
	Properties: #Properties
}
