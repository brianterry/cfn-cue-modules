package disksnapshot

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::DiskSnapshot
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::DiskSnapshot"
	Properties: #Properties
}
