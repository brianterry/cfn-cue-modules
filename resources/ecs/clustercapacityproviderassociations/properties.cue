package clustercapacityproviderassociations

#Properties: {
	CapacityProviders?: #CapacityProviders
	Cluster: #Cluster
	DefaultCapacityProviderStrategy: #DefaultCapacityProviderStrategy
}

#CapacityProvider: "FARGATE" | "FARGATE_SPOT" | string & strings.MinRunes(1) & strings.MaxRunes(2048)

#CapacityProviderStrategy: {
	Base?: int & >=0 & <=100000
	CapacityProvider: #CapacityProvider
	Weight?: int & >=0 & <=1000
}

#CapacityProviders: [...#CapacityProvider]

#Cluster: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#DefaultCapacityProviderStrategy: [...#CapacityProviderStrategy]
