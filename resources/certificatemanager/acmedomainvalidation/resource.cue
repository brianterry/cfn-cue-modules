package acmedomainvalidation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CertificateManager::AcmeDomainValidation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CertificateManager::AcmeDomainValidation"
	Properties: #Properties
}
