package securitycontrol

#Properties: {
	// The most recent reason for updating the customizable properties of a security control. This differs from the UpdateReason field of the BatchUpdateStandardsControlAssociations API, which tracks the reason for updating the enablement status of a control. This field accepts alphanumeric characters in addition to white spaces, dashes, and underscores.
	LastUpdateReason?: string
	// An object that identifies the name of a control parameter, its current value, and whether it has been customized.
	Parameters: #Parameters
	// The Amazon Resource Name (ARN) for a security control across standards, such as `arn:aws:securityhub:eu-central-1:123456789012:security-control/S3.1`. This parameter doesn't mention a specific standard.
	SecurityControlArn?: #NonEmptyString
	// The unique identifier of a security control across standards. Values for this field typically consist of an AWS service name and a number, such as APIGateway.3.
	SecurityControlId?: #NonEmptyString
}

#IntegerList: [...int]

#NonEmptyString: string & =~".*\\S.*"

#NonEmptyStringList: [...#NonEmptyString]

#ParameterConfiguration: {
	Value?: #ParameterValue
	ValueType: "DEFAULT" | "CUSTOM"
}

#ParameterValue: {
	// A control parameter that is a boolean.
	Boolean?: bool
	// A control parameter that is a double.
	Double?: number
	// A control parameter that is a enum.
	Enum?: #NonEmptyString
	// A control parameter that is a list of enums.
	EnumList?: #NonEmptyStringList
	// A control parameter that is a integer.
	Integer?: int
	// A control parameter that is a list of integers.
	IntegerList?: #IntegerList
	// A control parameter that is a string.
	String?: #NonEmptyString
	// A control parameter that is a list of strings.
	StringList?: #NonEmptyStringList
}

#Parameters: {...}
