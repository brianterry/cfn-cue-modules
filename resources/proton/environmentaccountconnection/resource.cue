package environmentaccountconnection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema describing various properties for AWS Proton Environment Account Connections resources.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Proton::EnvironmentAccountConnection"
	Properties: #Properties
}
