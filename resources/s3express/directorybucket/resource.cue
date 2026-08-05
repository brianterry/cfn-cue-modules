package directorybucket

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::S3Express::DirectoryBucket.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Express::DirectoryBucket"
	Properties: #Properties
}
