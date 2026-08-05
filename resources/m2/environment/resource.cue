package environment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a runtime environment that can run migrated mainframe applications.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::M2::Environment"
	Properties: #Properties
}
