package geofencecollection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Location::GeofenceCollection Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Location::GeofenceCollection"
	Properties: #Properties
}
