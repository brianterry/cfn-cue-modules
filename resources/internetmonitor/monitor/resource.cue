package monitor

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a monitor, which defines the monitoring boundaries for measurements that Internet Monitor publishes information about for an application
#Resource: cfn.#ResourceBase & {
	Type: "AWS::InternetMonitor::Monitor"
	Properties: #Properties
}
