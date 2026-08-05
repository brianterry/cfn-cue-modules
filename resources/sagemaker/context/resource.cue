package context

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SageMaker::Context. A context is a lineage tracking entity that represents a logical grouping of other tracking or experiment entities.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Context"
	Properties: #Properties
}
