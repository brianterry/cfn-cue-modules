package group

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IdentityStore::Group
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IdentityStore::Group"
	Properties: #Properties
}
