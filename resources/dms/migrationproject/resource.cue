package migrationproject

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DMS::MigrationProject
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::MigrationProject"
	Properties: #Properties
}
