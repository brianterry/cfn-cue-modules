package globalcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Neptune::GlobalCluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Neptune::GlobalCluster"
	Properties: #Properties
}
