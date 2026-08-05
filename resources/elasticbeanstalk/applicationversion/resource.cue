package applicationversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElasticBeanstalk::ApplicationVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticBeanstalk::ApplicationVersion"
	Properties: #Properties
}
