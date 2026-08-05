package mitigationaction

import "github.com/brianterry/cfn-cue-modules/cfn"

// Mitigation actions can be used to take actions to mitigate issues that were found in an Audit finding or Detect violation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::MitigationAction"
	Properties: #Properties
}
