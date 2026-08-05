package cluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A unique identifier for the deferred maintenance window.
	DeferMaintenanceIdentifier: string
	Endpoint: #Endpoint
	// The Amazon Resource Name (ARN) of the cluster namespace.
	ClusterNamespaceArn: string
	// The Amazon Resource Name (ARN) for the cluster's admin user credentials secret.
	MasterPasswordSecretArn: string
}
