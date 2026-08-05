package loadbalancertlscertificate

#Properties: {
	// An array of strings listing alternative domains and subdomains for your SSL/TLS certificate.
	CertificateAlternativeNames?: [...string]
	// The domain name (e.g., example.com ) for your SSL/TLS certificate.
	CertificateDomainName: string
	// The SSL/TLS certificate name.
	CertificateName: string
	// A Boolean value that indicates whether HTTPS redirection is enabled for the load balancer.
	HttpsRedirectionEnabled?: bool
	// When true, the SSL/TLS certificate is attached to the Lightsail load balancer.
	IsAttached?: bool
	// The name of your load balancer.
	LoadBalancerName: string & =~"\\w[\\w\\-]*\\w"
}
