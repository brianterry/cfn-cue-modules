package phonenumber

import "strings"

#Properties: {
	// The phone number country code.
	CountryCode?: string & =~"^[A-Z]{2}"
	// The description of the phone number.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The phone number prefix.
	Prefix?: string & =~"^\\+[0-9]{1,15}"
	// The source phone number arn.
	SourcePhoneNumberArn?: string
	// One or more tags.
	Tags?: [...#Tag]
	// The ARN of the target the phone number is claimed to.
	TargetArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:(instance|traffic-distribution-group)/[-a-zA-Z0-9]*$"
	// The phone number type
	Type?: string & =~"TOLL_FREE|DID|UIFN|SHARED|THIRD_PARTY_DID|THIRD_PARTY_TF|SHORT_CODE"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
