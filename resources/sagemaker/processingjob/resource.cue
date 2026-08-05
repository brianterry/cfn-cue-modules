package processingjob

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::ProcessingJob
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::ProcessingJob"
	Properties: #Properties
}
