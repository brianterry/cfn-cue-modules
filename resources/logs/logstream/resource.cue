package logstream

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Logs::LogStream
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::LogStream"
	Properties: #Properties
}
