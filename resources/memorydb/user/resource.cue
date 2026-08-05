package user

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MemoryDB::User
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MemoryDB::User"
	Properties: #Properties
}
