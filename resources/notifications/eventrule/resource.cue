package eventrule

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Notifications::EventRule
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Notifications::EventRule"
	Properties: #Properties
}
