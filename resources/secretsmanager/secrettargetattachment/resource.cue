package secrettargetattachment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecretsManager::SecretTargetAttachment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecretsManager::SecretTargetAttachment"
	Properties: #Properties
}
