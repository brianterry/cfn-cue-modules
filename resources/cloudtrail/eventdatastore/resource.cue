package eventdatastore

import "github.com/brianterry/cfn-cue-modules/cfn"

// A storage lake of event data against which you can run complex SQL-based queries. An event data store can include events that you have logged on your account from the last 7 to 2557 or 3653 days (about seven or ten years) depending on the selected BillingMode.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudTrail::EventDataStore"
	Properties: #Properties
}
