package application

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::ElasticBeanstalk::Application resource specifies an Elastic Beanstalk application.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElasticBeanstalk::Application"
	Properties: #Properties
}
