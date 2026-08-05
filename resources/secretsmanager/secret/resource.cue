package secret

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a new secret. A *secret* can be a password, a set of credentials such as a user name and password, an OAuth token, or other secret information that you store in an encrypted form in Secrets Manager.
 For RDS master user credentials, see [AWS::RDS::DBCluster MasterUserSecret](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-masterusersecret.html).
 For RS admin user credentials, see [AWS::Redshift::Cluster](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-cluster.html).
 To retrieve a secret in a CFNshort template, use a *dynamic reference*. For more information, see [Retrieve a secret in an resource](https://docs.aws.amazon.com/secretsmanager/latest/userguide/cfn-example_reference-secret.html).
 For information about creating a secret in the console, see [Create a secret](https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html). For information about creating a secret using the CLI or SDK, see [CreateSecret](https://docs.aws.amazon.com/secretsmanager/latest/apireference/API_CreateSecret.html).
 For information about retrieving a secret in code, see [Retrieve secrets from Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecretsManager::Secret"
	Properties: #Properties
}
