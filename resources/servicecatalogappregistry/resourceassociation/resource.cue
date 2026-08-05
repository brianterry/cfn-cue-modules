package resourceassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::ServiceCatalogAppRegistry::ResourceAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalogAppRegistry::ResourceAssociation"
	Properties: #Properties
}
