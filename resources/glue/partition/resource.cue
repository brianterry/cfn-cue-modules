package partition

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Partition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Partition"
	Properties: #Properties
}
