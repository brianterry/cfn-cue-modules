package gatewayroute

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppMesh::GatewayRoute
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppMesh::GatewayRoute"
	Properties: #Properties
}
