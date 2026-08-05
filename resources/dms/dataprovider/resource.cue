package dataprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::DMS::DataProvider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::DataProvider"
	Properties: #Properties
}
