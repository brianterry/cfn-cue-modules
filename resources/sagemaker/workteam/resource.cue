package workteam

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Workteam
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Workteam"
	Properties: #Properties
}
