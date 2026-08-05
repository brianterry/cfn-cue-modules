package virtualgateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppMesh::VirtualGateway
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppMesh::VirtualGateway"
	Properties: #Properties
}
