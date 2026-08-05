package virtualrouter

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppMesh::VirtualRouter
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppMesh::VirtualRouter"
	Properties: #Properties
}
