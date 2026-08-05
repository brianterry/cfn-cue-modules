package mesh

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppMesh::Mesh
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppMesh::Mesh"
	Properties: #Properties
}
