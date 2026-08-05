package attributegroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::ServiceCatalogAppRegistry::AttributeGroup.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalogAppRegistry::AttributeGroup"
	Properties: #Properties
}
