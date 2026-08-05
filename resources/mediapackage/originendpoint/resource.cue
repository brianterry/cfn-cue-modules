package originendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaPackage::OriginEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackage::OriginEndpoint"
	Properties: #Properties
}
