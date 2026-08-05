package action

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SageMaker::Action. An action is a lineage tracking entity that represents an action or activity, such as a model deployment or an HPO job.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Action"
	Properties: #Properties
}
