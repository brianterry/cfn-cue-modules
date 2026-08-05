package launchtemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Specifies the properties for creating a launch template.
// The minimum required properties for specifying a launch template are as follows:
// +  You must specify at least one property for the launch template data.
// +  You can optionally specify a name for the launch template. If you do not specify a name, CFN creates a name for you.
// A launch template can contain some or all of the configuration information to launch an instance. When you launch an instance using a launch template, instance properties that are not specified in the launch template use default values, except the ``ImageId`` property, which has no default value. If you do not specify an AMI ID for the launch template ``ImageId`` property, you must specify an AMI ID for the instance ``ImageId`` property.
// For more information, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the *Amazon EC2 User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::LaunchTemplate"
	Properties: #Properties
}
