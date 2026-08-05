package accesspoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::S3Express::AccessPoint resource is an Amazon S3 resource type that you can use to access buckets.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Express::AccessPoint"
	Properties: #Properties
}
