package clientcertificate

#Properties: {
	Description?: string
	Tags?: [...#Tag]
}

#Tag: {
	// A string you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string
	// The value for the specified tag key.
	Value: string
}
