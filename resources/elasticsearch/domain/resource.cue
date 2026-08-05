package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Elasticsearch::Domain
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Elasticsearch::Domain"
	Properties: #Properties
}
