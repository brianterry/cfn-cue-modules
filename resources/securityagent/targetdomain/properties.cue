package targetdomain

import "strings"

#Properties: {
	// Tags for the target domain
	Tags?: [...#Tag]
	// Domain name of the target domain
	TargetDomainName: string
	// Verification method for the target domain
	VerificationMethod: "DNS_TXT" | "HTTP_ROUTE" | "PRIVATE_VPC"
}

#DnsVerification: {
	// Record name to be added in DNS for target domain
	DnsRecordName?: string
	// Type of record to be added in DNS for target domain
	DnsRecordType?: "TXT"
	// Token used to verify domain ownership
	Token?: string
}

#HttpVerification: {
	// Route path where verification token should be placed
	RoutePath?: string
	// Token used to verify domain ownership
	Token?: string
}

#Tag: {
	// The key name of the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VerificationDetails: {
	DnsTxt?: #DnsVerification
	HttpRoute?: #HttpVerification
	// Type of domain ownership verification method
	Method?: "DNS_TXT" | "HTTP_ROUTE" | "PRIVATE_VPC"
}
