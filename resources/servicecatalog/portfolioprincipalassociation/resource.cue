package portfolioprincipalassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::PortfolioPrincipalAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::PortfolioPrincipalAssociation"
	Properties: #Properties
}
