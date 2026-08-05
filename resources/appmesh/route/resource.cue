package route

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppMesh::Route
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppMesh::Route"
	Properties: #Properties
}
