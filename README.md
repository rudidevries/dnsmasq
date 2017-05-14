Dnsmasq is configured to run on port 53 to use standard `resolv.conf` DNS
resolution, and to read hosts from `/etc/hosts` as well as `/etc/althosts`. It
can therefore be used for service discovery by populating an `althosts` file.
For example, create an althosts file with entries

~~~
192.168.1.3 server1
192.168.1.4 server2
192.168.1.5 server3
~~~

And then run the server:

~~~
docker run -d -v /path/to/althosts:/etc/althosts -p 53:53/udp rudidevries/dnsmasq
~~~

DNS requests for `server1`, `server2`, and `server3` will now show up as
192.1681.3, 192.168.1.4, and 192.168.1.5 respectively.
