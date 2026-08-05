package packagingconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaPackage::PackagingConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackage::PackagingConfiguration"
	Properties: #Properties
}
