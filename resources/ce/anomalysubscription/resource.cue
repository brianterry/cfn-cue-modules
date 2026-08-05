package anomalysubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Cost Anomaly Detection leverages advanced Machine Learning technologies to identify anomalous spend and root causes, so you can quickly take action. Create subscription to be notified
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CE::AnomalySubscription"
	Properties: #Properties
}
