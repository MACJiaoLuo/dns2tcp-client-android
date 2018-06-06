
# Note

Dns2tcp is a tool for relaying TCP connections over DNS. There is only
a simple identification mecanism but no encryption : DNS encapsulation
must be considered as an unsecure and anonymous transport
layer. Resources should be public external services like ssh,
ssltunnel. This works on both non rooted and rooted android.


## Building
This requires the Android NDK you can get it on Android Studio or Google Repository

```sh
	$ git clone https://github.com/lfasmpao/dns2tcp-client-android
	$ cd dns2tcp-client-android
	$ chmod +x build-dns2tcp.sh
	$ ./build-dns2tcp.sh
```

## Examples

### Client:

View list of available connection.
```sh
	$ dns2tcp -z dns2tcp.hsc.fr -k <my-key>  <dns_server>
	Available connection(s) :
	        ssh-gw
	        ssh6-home
	        ssl-tunnel
	$
```
Line based connection to a remote ssl-tunnel host :
```sh
	$ dns2tcp -r ssl-tunnel -l 4430 -k <my-key> -z dns2tcp._hsc.fr <dns_server>
	listening on port 4430
	...
	
```
File configuration :
```sh
	$ cat > ~/.dns2tcprc << EOF
	
	domain = dns2tcp.hsc.fr
	resource = ssl-tunnel
	local_port = 4430
	debug_level = 1
	key = whateveryouwant
	server = the_dns_server # or scan /etc/resolv.conf
	EOF
	$ dns2tcp
```


# Known Bugs

DNS desynchronisation

# TODO

Run as daemon - dns2tcp client works only on foreground.
