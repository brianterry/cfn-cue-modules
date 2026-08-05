package subnetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::MemoryDB::SubnetGroup resource creates an Amazon MemoryDB Subnet Group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MemoryDB::SubnetGroup"
	Properties: #Properties
}
