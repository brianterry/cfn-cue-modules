package replicationconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// A replication configuration that you later provide to configure and start a AWS DMS Serverless replication
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::ReplicationConfig"
	Properties: #Properties
}
