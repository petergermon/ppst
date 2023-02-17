This script first outputs information on all network adapters, including their names, descriptions, statuses, MAC addresses, IP addresses (both IPv4 and IPv6), and DNS server addresses.

Next, it tests the loopback connection by pinging the local computer (using "localhost" as the computer name).

Then, it tests the connection to the default gateway by retrieving the IP address of the default gateway from the routing table (assuming that the default gateway has a destination prefix of "0.0.0.0/0") and pinging it.

Finally, it tests the connection to Google by pinging the Google website.
