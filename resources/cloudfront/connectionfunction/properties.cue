package connectionfunction

import "strings"

#Properties: {
	// A flag that determines whether to automatically publish the function to the ``LIVE`` stage when it’s created. To automatically publish to the ``LIVE`` stage, set this property to ``true``.
	AutoPublish?: bool
	// The code for the connection function.
	ConnectionFunctionCode: string
	// Contains configuration information about a CloudFront function.
	ConnectionFunctionConfig: #ConnectionFunctionConfig
	// The connection function name.
	Name: string
	// A complex type that contains zero or more ``Tag`` elements.
	Tags?: [...#Tag]
}

#ConnectionFunctionConfig: {
	// A comment to describe the function. The comment cannot be longer than 128 characters.
	Comment: string
	// The configuration for the key value store associations.
	KeyValueStoreAssociations?: [...#KeyValueStoreAssociation]
	// The function's runtime environment version.
	Runtime: "cloudfront-js-2.0"
}

#KeyValueStoreAssociation: {
	// The Amazon Resource Name (ARN) of the key value store association.
	KeyValueStoreARN: string
}

#Tag: {
	// A string that contains ``Tag`` key.
	// The string length should be between 1 and 128 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string that contains an optional ``Tag`` value.
	// The string length should be between 0 and 256 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
