package dbcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Neptune::DBCluster resource creates an Amazon Neptune DB cluster.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Neptune::DBCluster"
	Properties: #Properties
}
