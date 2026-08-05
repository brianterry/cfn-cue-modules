package accessgrantslocation

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::S3::AccessGrantsLocation resource is an Amazon S3 resource type hosted in an access grants instance which can be the target of S3 access grants.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3::AccessGrantsLocation"
	Properties: #Properties
}
