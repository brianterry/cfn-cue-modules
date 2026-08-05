package instancesnapshot

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::InstanceSnapshot
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::InstanceSnapshot"
	Properties: #Properties
}
