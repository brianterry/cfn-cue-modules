package fleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::Fleet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::Fleet"
	Properties: #Properties
}
