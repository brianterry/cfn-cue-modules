package databasesnapshot

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::DatabaseSnapshot
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::DatabaseSnapshot"
	Properties: #Properties
}
