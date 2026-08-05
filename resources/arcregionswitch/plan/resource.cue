package plan

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a plan that specifies Regions, IAM roles, and workflows of logic required to perform the desired change to your multi-Region application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ARCRegionSwitch::Plan"
	Properties: #Properties
}
