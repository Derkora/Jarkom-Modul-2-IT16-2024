;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	airdrop.it16.com. root.airdrop.it16.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	airdrop.it16.com.
@	IN	A	192.241.4.3	; IP Stalber
www	IN	CNAME	airdrop.it16.com.
@	IN	AAAA	::1
