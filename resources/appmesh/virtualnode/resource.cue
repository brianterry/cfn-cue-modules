package virtualnode

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppMesh::VirtualNode
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppMesh::VirtualNode"
	Properties: #Properties
}
