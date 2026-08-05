package domainconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Create and manage a Domain Configuration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::DomainConfiguration"
	Properties: #Properties
}
