package hooktypeconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies the configuration data for a registered hook in CloudFormation Registry.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFormation::HookTypeConfig"
	Properties: #Properties
}
