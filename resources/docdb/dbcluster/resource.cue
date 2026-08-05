package dbcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DocDB::DBCluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DocDB::DBCluster"
	Properties: #Properties
}
