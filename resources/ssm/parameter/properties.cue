package parameter

#Properties: {
	// A regular expression used to validate the parameter value. For example, for ``String`` types with values restricted to numbers, you can specify the following: ``AllowedPattern=^\d+$``
	AllowedPattern?: string
	// The data type of the parameter, such as ``text`` or ``aws:ec2:image``. The default is ``text``.
	DataType?: "text" | "aws:ec2:image"
	// Information about the parameter.
	Description?: string
	// The name of the parameter.
  The reported maximum length of 2048 characters for a parameter name includes 1037 characters that are reserved for internal use by SYS. The maximum length for a parameter name that you specify is 1011 characters.
 This count of 1011 characters includes the characters in the ARN that precede the name you specify. This ARN length will vary depending on your partition and Region. For example, the following 45 characters count toward the 1011 character maximum for a parameter created in the US East (Ohio) Region: ``arn:aws:ssm:us-east-2:111122223333:parameter/``.
	Name?: string
	// Information about the policies assigned to a parameter.
 [Assigning parameter policies](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html) in the *User Guide*.
	Policies?: string
	// Optional metadata that you assign to a resource in the form of an arbitrary set of tags (key-value pairs). Tags enable you to categorize a resource in different ways, such as by purpose, owner, or environment. For example, you might want to tag a SYS parameter to identify the type of resource to which it applies, the environment, or the type of configuration data referenced by the parameter.
	Tags?: {...}
	// The parameter tier.
	Tier?: "Standard" | "Advanced" | "Intelligent-Tiering"
	// The type of parameter.
  Parameters of type ``SecureString`` are not supported by CFNlong.
	Type: "String" | "StringList"
	// The parameter value.
  If type is ``StringList``, the system returns a comma-separated string with no spaces between commas in the ``Value`` field.
	Value: string
}
