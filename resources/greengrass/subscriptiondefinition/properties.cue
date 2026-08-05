package subscriptiondefinition

#Properties: {
	InitialVersion?: #SubscriptionDefinitionVersion
	Name: string
	Tags?: {...}
}

#Subscription: {
	Id: string
	Source: string
	Subject: string
	Target: string
}

#SubscriptionDefinitionVersion: {
	Subscriptions: [...#Subscription]
}
