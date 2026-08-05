package dbinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Neptune::DBInstance resource creates an Amazon Neptune DB instance.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Neptune::DBInstance"
	Properties: #Properties
}
