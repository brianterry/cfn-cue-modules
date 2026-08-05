package userpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Adds or updates an inline policy document that is embedded in the specified IAM user.
 An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use [AWS::IAM::User](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html). To create a new managed policy, use [AWS::IAM::ManagedPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html). For information about policies, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the *IAM User Guide*.
 For information about the maximum number of inline policies that you can embed in a user, see [IAM and quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *IAM User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::UserPolicy"
	Properties: #Properties
}
