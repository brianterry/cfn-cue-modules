package account

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// If the account was created successfully, the unique identifier (ID) of the new account.
	AccountId: string & =~"^\\d{12}$" & strings.MaxRunes(12)
	// The status of the account in the organization.
	Status: "ACTIVE" | "SUSPENDED" | "PENDING_CLOSURE"
	// The state of the account in the organization.
	State: "PENDING_ACTIVATION" | "ACTIVE" | "SUSPENDED" | "PENDING_CLOSURE" | "CLOSED"
	// The date the account became a part of the organization.
	JoinedTimestamp: string
	// The method by which the account joined the organization.
	JoinedMethod: "INVITED" | "CREATED"
	// The Amazon Resource Name (ARN) of the account.
	Arn: string & =~"^arn:aws.*:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}"
	// The paths in the organization where the account exists.
	Paths: [...string & =~"^(o-[a-z0-9]{10,32}/r-[0-9a-z]{4,32}(/ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})*(/\\d{12})*)/"]
}
