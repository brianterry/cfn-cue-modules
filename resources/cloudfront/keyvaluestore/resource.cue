package keyvaluestore

import "github.com/brianterry/cfn-cue-modules/cfn"

// The key value store. Use this to separate data from function code, allowing you to update data without having to publish a new version of a function. The key value store holds keys and their corresponding values.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::KeyValueStore"
	Properties: #Properties
}
