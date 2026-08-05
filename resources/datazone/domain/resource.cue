package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// A domain is an organizing entity for connecting together assets, users, and their projects
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::Domain"
	Properties: #Properties
}
