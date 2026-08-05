package cidrcollection

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Route53::CidrCollection.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Route53::CidrCollection"
	Properties: #Properties
}
