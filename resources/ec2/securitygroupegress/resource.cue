package securitygroupegress

import "github.com/brianterry/cfn-cue-modules/cfn"

// Adds the specified outbound (egress) rule to a security group.
 An outbound rule permits instances to send traffic to the specified IPv4 or IPv6 address range, the IP addresses that are specified by a prefix list, or the instances that are associated with a destination security group. For more information, see [Security group rules](https://docs.aws.amazon.com/vpc/latest/userguide/security-group-rules.html).
 You must specify exactly one of the following destinations: an IPv4 address range, an IPv6 address range, a prefix list, or a security group.
 You must specify a protocol for each rule (for example, TCP). If the protocol is TCP or UDP, you must also specify a port or port range. If the protocol is ICMP or ICMPv6, you must also specify the ICMP/ICMPv6 type and code. To specify all types or all codes, use -1.
 Rule changes are propagated to instances associated with the security group as quickly as possible. However, a small delay might occur.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SecurityGroupEgress"
	Properties: #Properties
}
