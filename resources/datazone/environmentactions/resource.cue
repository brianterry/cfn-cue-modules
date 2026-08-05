package environmentactions

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::DataZone::EnvironmentActions Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::EnvironmentActions"
	Properties: #Properties
}
