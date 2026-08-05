package provisioningtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a fleet provisioning template.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::ProvisioningTemplate"
	Properties: #Properties
}
