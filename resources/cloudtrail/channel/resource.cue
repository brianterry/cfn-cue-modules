package channel

import "github.com/brianterry/cfn-cue-modules/cfn"

// A channel receives events from a specific source (such as an on-premises storage solution or application, or a partner event data source), and delivers the events to one or more event data stores. You use channels to ingest events into CloudTrail from sources outside AWS.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudTrail::Channel"
	Properties: #Properties
}
