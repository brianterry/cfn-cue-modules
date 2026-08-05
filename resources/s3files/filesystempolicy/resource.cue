package filesystempolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Files::FileSystemPolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Files::FileSystemPolicy"
	Properties: #Properties
}
