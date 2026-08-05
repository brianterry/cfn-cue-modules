package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SageMaker::Domain
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Domain"
	Properties: #Properties
}
