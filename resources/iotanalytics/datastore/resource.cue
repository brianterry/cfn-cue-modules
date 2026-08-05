package datastore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IoTAnalytics::Datastore
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTAnalytics::Datastore"
	Properties: #Properties
}
