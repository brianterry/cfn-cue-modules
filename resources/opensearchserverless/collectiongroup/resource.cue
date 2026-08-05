package collectiongroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::OpenSearchServerless::CollectionGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::CollectionGroup"
	Properties: #Properties
}
