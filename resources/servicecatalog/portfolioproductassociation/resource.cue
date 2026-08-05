package portfolioproductassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::PortfolioProductAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::PortfolioProductAssociation"
	Properties: #Properties
}
