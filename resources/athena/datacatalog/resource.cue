package datacatalog

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::Athena::DataCatalog
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Athena::DataCatalog"
	Properties: #Properties
}
