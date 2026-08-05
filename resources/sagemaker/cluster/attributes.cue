package cluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the HyperPod Cluster.
	ClusterArn: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:cluster/[a-z0-9]{12}$" & strings.MaxRunes(256)
	// The time at which the HyperPod cluster was created.
	CreationTime: string
	// The status of the HyperPod Cluster.
	ClusterStatus: "Creating" | "Deleting" | "Failed" | "InService" | "RollingBack" | "SystemUpdating" | "Updating"
	// The failure message of the HyperPod Cluster.
	FailureMessage: string
	InstanceGroups: #ClusterInstanceGroupsList
	RestrictedInstanceGroups: #ClusterRestrictedInstanceGroupsList
}
