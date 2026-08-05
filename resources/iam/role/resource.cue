package role

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a new role for your AWS-account.
// For more information about roles, see [IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) in the *IAM User Guide*. For information about quotas for role names and the number of roles you can create, see [IAM and quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *IAM User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::Role"
	Properties: #Properties
}
