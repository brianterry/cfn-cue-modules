package publisher

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The reserved publisher id for this type, or the publisher id assigned by CloudFormation for publishing in this region.
	PublisherId: string & =~"[0-9a-zA-Z-]{1,40}" & strings.MinRunes(1) & strings.MaxRunes(40)
	// Whether the publisher is verified.
	PublisherStatus: "VERIFIED" | "UNVERIFIED"
	// The URL to the publisher's profile with the identity provider.
	PublisherProfile: string & =~"(http:|https:)+[^s]+[w]" & strings.MaxRunes(1024)
	// The type of account used as the identity provider when registering this publisher with CloudFormation.
	IdentityProvider: "AWS_Marketplace" | "GitHub" | "Bitbucket"
}
