package group

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a new group.
  For information about the number of groups you can create, see [Limitations on Entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::Group"
	Properties: #Properties
}
