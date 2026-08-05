package bucket

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::Bucket
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::Bucket"
	Properties: #Properties
}
