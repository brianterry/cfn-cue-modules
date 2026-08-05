package portfolio

#Properties: {
	AcceptLanguage?: string
	Description?: string
	DisplayName: string
	ProviderName: string
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
