package accesspointpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::S3ObjectLambda::AccessPointPolicy resource is an Amazon S3ObjectLambda policy type that you can use to control permissions for your S3ObjectLambda
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3ObjectLambda::AccessPointPolicy"
	Properties: #Properties
}
