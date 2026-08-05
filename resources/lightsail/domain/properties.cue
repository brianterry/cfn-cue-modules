package domain

#Properties: {
	// The name of the domain to manage in Lightsail.
	DomainName: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#DomainEntry: {
	// The ID of the domain recordset entry.
	Id?: string
	// When true, specifies whether the domain entry is an alias used by the Lightsail load balancer, Lightsail container service, Lightsail content delivery network (CDN) distribution, or another AWS resource. You can include an alias (A type) record in your request, which points to the DNS name of a load balancer, container service, CDN distribution, or other AWS resource and routes traffic to that resource.
	IsAlias?: bool
	// The name of the domain entry.
	Name: string
	// The target AWS name server (e.g., ns-111.awsdns-11.com).
	Target: string
	// The type of domain entry (e.g., A, CNAME, MX, NS, SOA, SRV, TXT).
	Type: "A" | "AAAA" | "CNAME" | "MX" | "NS" | "SOA" | "SRV" | "TXT"
}

#Tag: {
	// The key name of the tag.
	Key: string
	// The value for the tag.
	Value?: string
}
