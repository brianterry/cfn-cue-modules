package dbcluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	DBClusterArn: string
	DBClusterResourceId: string
	Endpoint: #Endpoint
	ReadEndpoint: #ReadEndpoint
	// The secret managed by RDS in AWS Secrets Manager for the master user password.
  When you restore a DB cluster from a snapshot, Amazon RDS generates a new secret instead of reusing the secret specified in the ``SecretArn`` property. This ensures that the restored DB cluster is securely managed with a dedicated secret. To maintain consistent integration with your application, you might need to update resource configurations to reference the newly created secret.
  For more information, see [Password management with Secrets Manager](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-secrets-manager.html) in the *Amazon RDS User Guide* and [Password management with Secrets Manager](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/rds-secrets-manager.html) in the *Amazon Aurora User Guide.*
	MasterUserSecret: #MasterUserSecret
	StorageEncryptionType: string
	StorageThroughput: int
}
