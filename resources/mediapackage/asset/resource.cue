package asset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaPackage::Asset
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackage::Asset"
	Properties: #Properties
}
