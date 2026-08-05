package portfolioshare

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::PortfolioShare
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::PortfolioShare"
	Properties: #Properties
}
