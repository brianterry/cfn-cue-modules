package servicelinkedrole

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IAM::ServiceLinkedRole
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::ServiceLinkedRole"
	Properties: #Properties
}
