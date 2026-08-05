package groupmembership

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS:IdentityStore::GroupMembership
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IdentityStore::GroupMembership"
	Properties: #Properties
}
