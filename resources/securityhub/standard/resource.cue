package standard

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::SecurityHub::Standard`` resource specifies the enablement of a security standard. The standard is identified by the ``StandardsArn`` property. To view a list of ASH standards and their Amazon Resource Names (ARNs), use the [DescribeStandards](https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_DescribeStandards.html) API operation.
 You must create a separate ``AWS::SecurityHub::Standard`` resource for each standard that you want to enable.
 For more information about ASH standards, see [standards reference](https://docs.aws.amazon.com/securityhub/latest/userguide/standards-reference.html) in the *User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::Standard"
	Properties: #Properties
}
