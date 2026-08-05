package account

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::CertificateManager::Account.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CertificateManager::Account"
	Properties: #Properties
}
