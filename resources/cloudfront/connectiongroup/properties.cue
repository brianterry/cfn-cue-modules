package connectiongroup

#Properties: {
	// The ID of the Anycast static IP list.
	AnycastIpListId?: string
	// Whether the connection group is enabled.
	Enabled?: bool
	// IPv6 is enabled for the connection group.
	Ipv6Enabled?: bool
	// The name of the connection group.
	Name: string
	// A complex type that contains zero or more ``Tag`` elements.
	Tags?: [...#Tag]
}

#Tag: {
	// A string that contains ``Tag`` key.
	// The string length should be between 1 and 128 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Key: string
	// A string that contains an optional ``Tag`` value.
	// The string length should be between 0 and 256 characters. Valid characters include ``a-z``, ``A-Z``, ``0-9``, space, and the special characters ``_ - . : / = + @``.
	Value: string
}
