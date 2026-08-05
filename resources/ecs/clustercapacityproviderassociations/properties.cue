package clustercapacityproviderassociations

#Properties: {
	CapacityProviders?: #CapacityProviders
	Cluster: #Cluster
	DefaultCapacityProviderStrategy: #DefaultCapacityProviderStrategy
}

#CapacityProviderStrategy: {
	Base?: int & >=0 & <=100000
	CapacityProvider: #CapacityProvider
	Weight?: int & >=0 & <=1000
}
