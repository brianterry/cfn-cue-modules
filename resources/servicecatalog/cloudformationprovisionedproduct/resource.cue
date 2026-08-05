package cloudformationprovisionedproduct

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::ServiceCatalog::CloudFormationProvisionedProduct
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::CloudFormationProvisionedProduct"
	Properties: #Properties
}
