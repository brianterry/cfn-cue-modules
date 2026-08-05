package layerversionpermission

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for Lambda LayerVersionPermission
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::LayerVersionPermission"
	Properties: #Properties
}
