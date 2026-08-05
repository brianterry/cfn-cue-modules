package container

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::MediaStore::Container
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaStore::Container"
	Properties: #Properties
}
