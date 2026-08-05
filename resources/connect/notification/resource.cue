package notification

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::Notification
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::Notification"
	Properties: #Properties
}
