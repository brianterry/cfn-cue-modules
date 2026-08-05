package dashboard

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::BCM::Dashboard Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BCM::Dashboard"
	Properties: #Properties
}
