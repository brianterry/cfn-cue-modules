package user

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a new IAM user for your AWS-account.
  For information about quotas for the number of IAM users you can create, see [IAM and quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *IAM User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::User"
	Properties: #Properties
}
