package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecretsManager::ResourcePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecretsManager::ResourcePolicy"
	Properties: #Properties
}
