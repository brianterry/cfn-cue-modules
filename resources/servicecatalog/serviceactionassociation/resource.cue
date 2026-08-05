package serviceactionassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::ServiceCatalog::ServiceActionAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalog::ServiceActionAssociation"
	Properties: #Properties
}
