package cloudexadatainfrastructure

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ODB::CloudExadataInfrastructure resource creates an Exadata Infrastructure
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ODB::CloudExadataInfrastructure"
	Properties: #Properties
}
