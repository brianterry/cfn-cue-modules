package dnssec

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource used to control (enable/disable) DNSSEC in a specific hosted zone.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53::DNSSEC"
	Properties: #Properties
}
