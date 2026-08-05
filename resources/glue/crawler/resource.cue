package crawler

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Glue::Crawler
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Glue::Crawler"
	Properties: #Properties
}
