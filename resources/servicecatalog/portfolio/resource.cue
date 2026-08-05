package portfolio

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource type definition for AWS::ServiceCatalog::Portfolio
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::Portfolio"
	Properties: #Properties
}
