package flywheel

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Comprehend::Flywheel resource creates an Amazon Comprehend Flywheel that enables customer to train their model.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Comprehend::Flywheel"
	Properties: #Properties
}
