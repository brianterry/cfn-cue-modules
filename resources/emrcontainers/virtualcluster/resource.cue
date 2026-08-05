package virtualcluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EMRContainers::VirtualCluster Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMRContainers::VirtualCluster"
	Properties: #Properties
}
