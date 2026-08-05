package configurationtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::ElasticBeanstalk::ConfigurationTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticBeanstalk::ConfigurationTemplate"
	Properties: #Properties
}
