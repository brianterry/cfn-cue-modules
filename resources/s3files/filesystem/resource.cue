package filesystem

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Files::FileSystem
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Files::FileSystem"
	Properties: #Properties
}
