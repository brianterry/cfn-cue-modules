package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema for AWS::ServiceCatalogAppRegistry::Application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ServiceCatalogAppRegistry::Application"
	Properties: #Properties
}
