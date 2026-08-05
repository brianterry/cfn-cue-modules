package privatednsnamespace

#Properties: {
	Description?: string
	Name: string
	Properties?: #Properties
	Tags?: [...#Tag]
	Vpc: string
}

#PrivateDnsPropertiesMutable: {
	SOA?: #SOA
}

#Properties: {
	DnsProperties?: #PrivateDnsPropertiesMutable
}

#SOA: {
	TTL?: number
}

#Tag: {
	Key: string
	Value: string
}
