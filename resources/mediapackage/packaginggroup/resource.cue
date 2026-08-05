package packaginggroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaPackage::PackagingGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackage::PackagingGroup"
	Properties: #Properties
}
