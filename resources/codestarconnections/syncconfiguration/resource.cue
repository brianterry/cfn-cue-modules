package syncconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Schema for AWS::CodeStarConnections::SyncConfiguration resource which is used to enables an AWS resource to be synchronized from a source-provider.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CodeStarConnections::SyncConfiguration"
	Properties: #Properties
}
