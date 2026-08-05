package signalcatalog

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::IoTFleetWise::SignalCatalog Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTFleetWise::SignalCatalog"
	Properties: #Properties
}
