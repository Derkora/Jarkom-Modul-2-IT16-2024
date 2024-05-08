;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	redzone.it16.com. root.redzone.it16.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	redzone.it16.com.
@	IN	A	192.241.4.2	; IP Severny
www	IN	CNAME	redzone.it16.com.
@	IN	AAAA	::1
