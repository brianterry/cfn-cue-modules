package conformancepack

import "github.com/brianterry/cfn-cue-modules/cfn"

// A conformance pack is a collection of AWS Config rules and remediation actions that can be easily deployed as a single entity in an account and a region or across an entire AWS Organization.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::ConformancePack"
	Properties: #Properties
}
