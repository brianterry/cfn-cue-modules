package containergroupdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::ContainerGroupDefinition resource creates an Amazon GameLift container group definition.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::ContainerGroupDefinition"
	Properties: #Properties
}
