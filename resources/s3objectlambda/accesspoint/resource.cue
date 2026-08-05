package accesspoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::S3ObjectLambda::AccessPoint resource is an Amazon S3ObjectLambda resource type that you can use to add computation to S3 actions
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3ObjectLambda::AccessPoint"
	Properties: #Properties
}
