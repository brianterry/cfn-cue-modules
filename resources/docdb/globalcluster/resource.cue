package globalcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::DocDB::GlobalCluster resource represents an Amazon DocumentDB Global Cluster.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DocDB::GlobalCluster"
	Properties: #Properties
}
