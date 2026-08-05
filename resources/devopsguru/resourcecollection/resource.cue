package resourcecollection

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource schema represents the ResourceCollection resource in the Amazon DevOps Guru.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DevOpsGuru::ResourceCollection"
	Properties: #Properties
}
