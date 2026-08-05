package cluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::DocDBElastic::Cluster Amazon DocumentDB (with MongoDB compatibility) Elastic Scale resource describes a Cluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DocDBElastic::Cluster"
	Properties: #Properties
}
