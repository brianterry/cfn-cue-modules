package environmentblueprintconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::DataZone::EnvironmentBlueprintConfiguration Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::EnvironmentBlueprintConfiguration"
	Properties: #Properties
}
