package cluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique ID given to your cluster.
	Id: string
	// The ARN of the cluster, such as arn:aws:eks:us-west-2:666666666666:cluster/prod.
	Arn: string
	// The endpoint for your Kubernetes API server, such as https://5E1D0CEXAMPLEA591B746AFC5AB30262.yl4.us-west-2.eks.amazonaws.com.
	Endpoint: string
	// The certificate-authority-data for your cluster.
	CertificateAuthorityData: string
	// The cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control plane to data plane communication.
	ClusterSecurityGroupId: string
	// Amazon Resource Name (ARN) or alias of the customer master key (CMK).
	EncryptionConfigKeyArn: string
	// The issuer URL for the cluster's OIDC identity provider, such as https://oidc.eks.us-west-2.amazonaws.com/id/EXAMPLED539D4633E53DE1B716D3041E. If you need to remove https:// from this output value, you can include the following code in your template.
	OpenIdConnectIssuerUrl: string
	KubernetesNetworkConfig: #KubernetesNetworkConfig
}
