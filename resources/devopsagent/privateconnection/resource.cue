package privateconnection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DevOpsAgent::PrivateConnection
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DevOpsAgent::PrivateConnection"
	Properties: #Properties
}
