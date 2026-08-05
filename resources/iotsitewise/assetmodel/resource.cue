package assetmodel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTSiteWise::AssetModel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTSiteWise::AssetModel"
	Properties: #Properties
}
