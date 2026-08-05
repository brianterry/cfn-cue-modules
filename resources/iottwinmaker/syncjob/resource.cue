package syncjob

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::IoTTwinMaker::SyncJob
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoTTwinMaker::SyncJob"
	Properties: #Properties
}
