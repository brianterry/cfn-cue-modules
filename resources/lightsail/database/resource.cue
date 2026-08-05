package database

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Database
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Database"
	Properties: #Properties
}
