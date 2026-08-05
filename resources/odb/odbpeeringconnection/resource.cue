package odbpeeringconnection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ODB::OdbPeeringConnection.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ODB::OdbPeeringConnection"
	Properties: #Properties
}
