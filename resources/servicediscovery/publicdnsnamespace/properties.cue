package publicdnsnamespace

#Properties: {
	Description?: string
	Name: string
	Properties?: #Properties
	Tags?: [...#Tag]
}

#Properties: {
	DnsProperties?: #PublicDnsPropertiesMutable
}

#PublicDnsPropertiesMutable: {
	SOA?: #SOA
}

#SOA: {
	TTL?: number
}

#Tag: {
	Key: string
	Value: string
}
