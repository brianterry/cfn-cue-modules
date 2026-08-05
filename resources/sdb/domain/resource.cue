package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SDB::Domain
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SDB::Domain"
	Properties: #Properties
}
