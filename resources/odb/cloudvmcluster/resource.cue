package cloudvmcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ODB::CloudVmCluster resource creates a Cloud VM Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ODB::CloudVmCluster"
	Properties: #Properties
}
