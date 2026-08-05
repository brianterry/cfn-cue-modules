package odbnetwork

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ODB::OdbNetwork resource creates an ODB Network
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ODB::OdbNetwork"
	Properties: #Properties
}
