package dbsubnetgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DocDB::DBSubnetGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DocDB::DBSubnetGroup"
	Properties: #Properties
}
