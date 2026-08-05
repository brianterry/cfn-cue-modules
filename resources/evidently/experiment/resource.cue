package experiment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Evidently::Experiment.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Evidently::Experiment"
	Properties: #Properties
}
