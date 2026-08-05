package acl

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MemoryDB::ACL
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MemoryDB::ACL"
	Properties: #Properties
}
