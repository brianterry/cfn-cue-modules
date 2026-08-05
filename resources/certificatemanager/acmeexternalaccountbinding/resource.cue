package acmeexternalaccountbinding

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CertificateManager::AcmeExternalAccountBinding
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CertificateManager::AcmeExternalAccountBinding"
	Properties: #Properties
}
