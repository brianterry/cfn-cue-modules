package storedquery

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Config::StoredQuery
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Config::StoredQuery"
	Properties: #Properties
}
