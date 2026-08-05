package outcome

import "github.com/brianterry/cfn-cue-modules/cfn"

// An outcome for rule evaluation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::FraudDetector::Outcome"
	Properties: #Properties
}
