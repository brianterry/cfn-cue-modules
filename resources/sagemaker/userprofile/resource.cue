package userprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::UserProfile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::UserProfile"
	Properties: #Properties
}
