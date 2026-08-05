package entitlement

#Properties: {
	AppVisibility: string
	Attributes: [...#Attribute]
	Description?: string
	Name: string
	StackName: string
}

#Attribute: {
	Name: string
	Value: string
}
