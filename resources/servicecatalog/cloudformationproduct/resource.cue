package cloudformationproduct

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::ServiceCatalog::CloudFormationProduct
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::CloudFormationProduct"
	Properties: #Properties
}
