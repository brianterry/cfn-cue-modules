package applicationassignment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for SSO application access grant to a user or group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSO::ApplicationAssignment"
	Properties: #Properties
}
