package fleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::GameLift::Fleet resource creates an Amazon GameLift (GameLift) fleet to host game servers. A fleet is a set of EC2 or Anywhere instances, each of which can host multiple game sessions.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GameLift::Fleet"
	Properties: #Properties
}
