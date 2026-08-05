package fhirdatastore

import "github.com/brianterry/cfn-cue-modules/cfn"

// HealthLake FHIR Datastore
#Resource: cfn.#ResourceBase & {
	Type: "AWS::HealthLake::FHIRDatastore"
	Properties: #Properties
}
