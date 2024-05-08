;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	loot.it16.com. loot.airdrop.it16.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	loot.it16.com.
@	IN	A	192.241.4.5	; IP Mylta
www	IN	CNAME	loot.it16.com.
@	IN	AAAA	::1
