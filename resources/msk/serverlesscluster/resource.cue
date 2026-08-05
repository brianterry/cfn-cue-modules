package serverlesscluster

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MSK::ServerlessCluster
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MSK::ServerlessCluster"
	Properties: #Properties
}
