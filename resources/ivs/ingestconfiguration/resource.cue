package ingestconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::IngestConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::IngestConfiguration"
	Properties: #Properties
}
