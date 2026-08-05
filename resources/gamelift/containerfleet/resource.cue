package containerfleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::ContainerFleet resource creates an Amazon GameLift (GameLift) container fleet to host game servers.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::ContainerFleet"
	Properties: #Properties
}
