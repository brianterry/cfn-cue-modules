package cloudautonomousvmcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ODB::CloudAutonomousVmCluster resource creates a Cloud Autonomous VM Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ODB::CloudAutonomousVmCluster"
	Properties: #Properties
}
