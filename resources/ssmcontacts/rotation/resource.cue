package rotation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSMContacts::Rotation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSMContacts::Rotation"
	Properties: #Properties
}
