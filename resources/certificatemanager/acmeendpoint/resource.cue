package acmeendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CertificateManager::AcmeEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CertificateManager::AcmeEndpoint"
	Properties: #Properties
}
