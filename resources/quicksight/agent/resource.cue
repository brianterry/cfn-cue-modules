package agent

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::QuickSight::Agent
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QuickSight::Agent"
	Properties: #Properties
}
