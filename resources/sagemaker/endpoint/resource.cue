package endpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Endpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Endpoint"
	Properties: #Properties
}
