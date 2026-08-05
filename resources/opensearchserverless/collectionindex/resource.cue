package collectionindex

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::OpenSearchServerless::CollectionIndex
#Resource: cfn.#ResourceBase & {
	Type: "AWS::OpenSearchServerless::CollectionIndex"
	Properties: #Properties
}
