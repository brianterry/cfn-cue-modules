package directoryconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::DirectoryConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::DirectoryConfig"
	Properties: #Properties
}
