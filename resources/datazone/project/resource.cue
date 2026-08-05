package project

import "github.com/brianterry/cfn-cue-modules/cfn"

// Amazon DataZone projects are business use case–based groupings of people, assets (data), and tools used to simplify access to the AWS analytics.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::Project"
	Properties: #Properties
}
