package drtaccess

import "strings"

#Properties: {
	// Authorizes the Shield Response Team (SRT) to access the specified Amazon S3 bucket containing log data such as Application Load Balancer access logs, CloudFront logs, or logs from third party sources. You can associate up to 10 Amazon S3 buckets with your subscription.
	LogBucketList?: [...string & strings.MinRunes(3) & strings.MaxRunes(63)]
	// Authorizes the Shield Response Team (SRT) using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks. This enables the SRT to inspect your AWS WAF configuration and create or update AWS WAF rules and web ACLs.
	RoleArn: string & strings.MaxRunes(2048)
}
