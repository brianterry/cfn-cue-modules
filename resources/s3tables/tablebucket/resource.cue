package tablebucket

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an Amazon S3 Tables table bucket in the same AWS Region where you create the AWS CloudFormation stack.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3Tables::TableBucket"
	Properties: #Properties
}
