package quickconnect

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::QuickConnect
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::QuickConnect"
	Properties: #Properties
}
