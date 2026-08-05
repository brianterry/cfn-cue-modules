package disk

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Disk
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Disk"
	Properties: #Properties
}
