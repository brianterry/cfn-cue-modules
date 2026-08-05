package environmentaccountconnection

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of an IAM service role in the environment account. AWS Proton uses this role to provision infrastructure resources using CodeBuild-based provisioning in the associated environment account.
	CodebuildRoleArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov):iam::\\d{12}:role/([\\w+=,.@-]{1,512}[/:])*([\\w+=,.@-]{1,64})$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// The Amazon Resource Name (ARN) of the IAM service role that AWS Proton uses when provisioning directly defined components in the associated environment account. It determines the scope of infrastructure that a component can provision in the account.
	ComponentRoleArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov):iam::\\d{12}:role/([\\w+=,.@-]{1,512}[/:])*([\\w+=,.@-]{1,64})$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// The environment account that's connected to the environment account connection.
	EnvironmentAccountId?: string & =~"^\\d{12}$"
	// The name of the AWS Proton environment that's created in the associated management account.
	EnvironmentName?: string & =~"^[0-9A-Za-z]+[0-9A-Za-z_\\-]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The ID of the management account that accepts or rejects the environment account connection. You create an manage the AWS Proton environment in this account. If the management account accepts the environment account connection, AWS Proton can use the associated IAM role to provision environment infrastructure resources in the associated environment account.
	ManagementAccountId?: string & =~"^\\d{12}$"
	// The Amazon Resource Name (ARN) of the IAM service role that's created in the environment account. AWS Proton uses this role to provision infrastructure resources in the associated environment account.
	RoleArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov):iam::\\d{12}:role/([\\w+=,.@-]{1,512}[/:])*([\\w+=,.@-]{1,64})$" & strings.MinRunes(1) & strings.MaxRunes(200)
	// <p>An optional list of metadata items that you can associate with the Proton environment account connection. A tag is a key-value pair.</p>
         <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
        <i>Proton User Guide</i>.</p>
	Tags?: [...#Tag]
}

#Tag: {
	// <p>The key of the resource tag.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The value of the resource tag.</p>
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
