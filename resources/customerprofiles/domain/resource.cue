package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// A domain defined for 3rd party data source in Profile Service
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CustomerProfiles::Domain"
	Properties: #Properties
}
