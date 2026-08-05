package dbshardgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a new DB shard group for Aurora Limitless Database. You must enable Aurora Limitless Database to create a DB shard group.
// Valid for: Aurora DB clusters only
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::DBShardGroup"
	Properties: #Properties
}
