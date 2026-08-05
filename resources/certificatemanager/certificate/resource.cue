package certificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CertificateManager::Certificate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CertificateManager::Certificate"
	Properties: #Properties
}
