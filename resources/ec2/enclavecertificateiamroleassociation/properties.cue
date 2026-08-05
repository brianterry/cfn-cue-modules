package enclavecertificateiamroleassociation

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the ACM certificate with which to associate the IAM role.
	CertificateArn: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:acm:[A-Za-z0-9-]{1,64}:([0-9]{12})?:certificate/.+$" & strings.MinRunes(1) & strings.MaxRunes(1283)
	// The Amazon Resource Name (ARN) of the IAM role to associate with the ACM certificate. You can associate up to 16 IAM roles with an ACM certificate.
	RoleArn: string & =~"^arn:aws[A-Za-z0-9-]{0,64}:iam:.*:([0-9]{12})?:role/.+$" & strings.MinRunes(1) & strings.MaxRunes(1283)
}
