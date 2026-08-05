package acceptedportfolioshare

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ServiceCatalog::AcceptedPortfolioShare
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::AcceptedPortfolioShare"
	Properties: #Properties
}
