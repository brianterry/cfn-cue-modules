package dbinstance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DocDB::DBInstance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DocDB::DBInstance"
	Properties: #Properties
}
