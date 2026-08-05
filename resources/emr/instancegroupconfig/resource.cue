package instancegroupconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EMR::InstanceGroupConfig
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMR::InstanceGroupConfig"
	Properties: #Properties
}
