package virtualservice

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppMesh::VirtualService
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppMesh::VirtualService"
	Properties: #Properties
}
