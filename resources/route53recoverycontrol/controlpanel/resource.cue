package controlpanel

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS Route53 Recovery Control Control Panel resource schema .
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53RecoveryControl::ControlPanel"
	Properties: #Properties
}
