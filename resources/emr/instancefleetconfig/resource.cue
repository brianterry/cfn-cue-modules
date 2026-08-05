package instancefleetconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EMR::InstanceFleetConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMR::InstanceFleetConfig"
	Properties: #Properties
}
