package accountauditconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Configures the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::AccountAuditConfiguration"
	Properties: #Properties
}
