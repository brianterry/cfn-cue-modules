package experiment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::SageMaker::Experiment. An experiment is a collection of related trials used to organize and track machine learning workflows.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SageMaker::Experiment"
	Properties: #Properties
}
