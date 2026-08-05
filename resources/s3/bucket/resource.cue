package bucket

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::S3::Bucket`` resource creates an Amazon S3 bucket in the same AWS Region where you create the AWS CloudFormation stack.
 To control how AWS CloudFormation handles the bucket when the stack is deleted, you can set a deletion policy for your bucket. You can choose to *retain* the bucket or to *delete* the bucket. For more information, see [DeletionPolicy Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html).
  You can only delete empty buckets. Deletion fails for buckets that have contents.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::S3::Bucket"
	Properties: #Properties
}
