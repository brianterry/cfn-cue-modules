package datamigration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DMS::DataMigration.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::DataMigration"
	Properties: #Properties
}
