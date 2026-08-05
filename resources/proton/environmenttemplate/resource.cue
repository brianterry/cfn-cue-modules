package environmenttemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Proton::EnvironmentTemplate Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Proton::EnvironmentTemplate"
	Properties: #Properties
}
