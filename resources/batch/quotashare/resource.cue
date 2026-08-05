package quotashare

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates an AWS Batch quota share. Each quota share operates as a virtual queue with a configured compute capacity, resource sharing strategy, and borrow limits.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Batch::QuotaShare"
	Properties: #Properties
}
