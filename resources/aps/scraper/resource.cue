package scraper

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::APS::Scraper
#Resource: cfn.#ResourceBase & {
	Type: "AWS::APS::Scraper"
	Properties: #Properties
}
