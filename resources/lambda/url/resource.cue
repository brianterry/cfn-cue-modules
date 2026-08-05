package url

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lambda::Url
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::Url"
	Properties: #Properties
}
