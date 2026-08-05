package layerversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lambda::LayerVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::LayerVersion"
	Properties: #Properties
}
