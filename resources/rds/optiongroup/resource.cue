package optiongroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::RDS::OptionGroup`` resource creates or updates an option group, to enable and configure features that are specific to a particular DB engine.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::OptionGroup"
	Properties: #Properties
}
