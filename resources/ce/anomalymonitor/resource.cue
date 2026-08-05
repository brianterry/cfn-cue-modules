package anomalymonitor

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Cost Anomaly Detection leverages advanced Machine Learning technologies to identify anomalous spend and root causes, so you can quickly take action. You can use Cost Anomaly Detection by creating monitor.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CE::AnomalyMonitor"
	Properties: #Properties
}
