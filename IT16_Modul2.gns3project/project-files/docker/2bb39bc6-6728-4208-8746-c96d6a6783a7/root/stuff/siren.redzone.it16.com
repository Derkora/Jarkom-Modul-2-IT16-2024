;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	siren.redzone.it16.com. root.siren.redzone.it16.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	siren.redzone.it16.com.
@	IN	A	192.241.4.2
www	IN	A	192.241.4.2 ; IP Severny
