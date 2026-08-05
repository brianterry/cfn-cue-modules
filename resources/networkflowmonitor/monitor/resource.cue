package monitor

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a monitor for specific network flows between local and remote resources to monitor network performance for workloads.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::NetworkFlowMonitor::Monitor"
	Properties: #Properties
}
