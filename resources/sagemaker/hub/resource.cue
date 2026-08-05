package hub

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SageMaker::Hub
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Hub"
	Properties: #Properties
}
