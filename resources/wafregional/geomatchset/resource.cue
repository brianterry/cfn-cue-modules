package geomatchset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WAFRegional::GeoMatchSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WAFRegional::GeoMatchSet"
	Properties: #Properties
}
