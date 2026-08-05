package instancestorageconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::InstanceStorageConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::InstanceStorageConfig"
	Properties: #Properties
}
