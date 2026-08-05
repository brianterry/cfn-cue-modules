package instanceprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a new instance profile. For information about instance profiles, see [Using instance profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html).
  For information about the number of instance profiles you can create, see [object quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html) in the *User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::InstanceProfile"
	Properties: #Properties
}
