package fleetmetric

import "github.com/brianterry/cfn-cue-modules/cfn"

// An aggregated metric of certain devices in your fleet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::FleetMetric"
	Properties: #Properties
}
