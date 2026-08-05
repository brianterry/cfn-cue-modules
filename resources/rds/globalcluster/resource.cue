package globalcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::RDS::GlobalCluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RDS::GlobalCluster"
	Properties: #Properties
}
