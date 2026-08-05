package integrationresourceproperty

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::IntegrationResourceProperty
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::IntegrationResourceProperty"
	Properties: #Properties
}
