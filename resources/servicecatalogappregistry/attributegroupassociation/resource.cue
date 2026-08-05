package attributegroupassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::ServiceCatalogAppRegistry::AttributeGroupAssociation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalogAppRegistry::AttributeGroupAssociation"
	Properties: #Properties
}
