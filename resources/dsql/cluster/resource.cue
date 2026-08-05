package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DSQL::Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DSQL::Cluster"
	Properties: #Properties
}
