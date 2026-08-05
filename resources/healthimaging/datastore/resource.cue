package datastore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::HealthImaging::Datastore Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::HealthImaging::Datastore"
	Properties: #Properties
}
