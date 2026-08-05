package rotationschedule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SecretsManager::RotationSchedule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecretsManager::RotationSchedule"
	Properties: #Properties
}
