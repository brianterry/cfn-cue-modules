package vpcingressconnection

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::AppRunner::VpcIngressConnection resource is an App Runner resource that specifies an App Runner VpcIngressConnection.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppRunner::VpcIngressConnection"
	Properties: #Properties
}
