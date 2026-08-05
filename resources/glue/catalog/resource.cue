package catalog

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a catalog in the Glue Data Catalog.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Catalog"
	Properties: #Properties
}
