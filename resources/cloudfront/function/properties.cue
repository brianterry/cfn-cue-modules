package function

import "strings"

#Properties: {
	// A flag that determines whether to automatically publish the function to the ``LIVE`` stage when it’s created. To automatically publish to the ``LIVE`` stage, set this property to ``true``.
	AutoPublish?: bool
	// The function code. For more information about writing a CloudFront function, see [Writing function code for CloudFront Functions](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html) in the *Amazon CloudFront Developer Guide*.
	FunctionCode: string
	// Contains configuration information about a CloudFront function.
	FunctionConfig: #FunctionConfig
	// A name to identify the function.
	Name: string
	// A complex type that contains zero or more ``Tag`` elements.
	Tags?: [...#Tag]
}

#FunctionConfig: {
	// A comment to describe the function. The comment cannot be longer than 128 characters.
	Comment: string
	// The configuration for the key value store associations.
	KeyValueStoreAssociations?: [...#KeyValueStoreAssociation]
	// The function's runtime environment version.
	Runtime: string
}

#FunctionMetadata: {
	// The Amazon Resource Name (ARN) of the function. The ARN uniquely identifies the function.
	FunctionARN?: string
}

#KeyValueStoreAssociation: {
	// The Amazon Resource Name (ARN) of the key value store association.
	KeyValueStoreARN: string
}

#Tag: {
	// A string that contains ``Tag`` key.
 The string length should be between 1 and 128 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string that contains an optional ``Tag`` value.
 The string length should be between 0 and 256 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
