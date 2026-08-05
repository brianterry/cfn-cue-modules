package namespace

#Properties: {
	Namespace: #Namespace
	TableBucketARN: #TableBucketARN
}

#Namespace: string & strings.MinRunes(1) & strings.MaxRunes(255)

#TableBucketARN: string
