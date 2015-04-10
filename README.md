# dnsmasq-docker
Dnsmasq under Slackware userspace
[Dnsmasq project page](http://www.thekelleys.org.uk/dnsmasq/doc.html)

Dnsmasq provides network infrastructure for small networks: DNS, DHCP, router advertisement and network boot. It is designed to be lightweight and have a small footprint, suitable for resource constrained routers and firewalls. It has also been widely used for tethering on smartphones and portable hotspots, and to support virtual networking in virtualisation frameworks.

## Directions:

### Data Volumes:
 * /etc/dnsmasq.d : in this path Transmission will store it's configuration files.
 * /tftpboot : in this path Transmission will store the PXE Bootfiles

### Network Ports:
 * 53/tcp : DNS server port
 * 53/udp : DNS server port
 * 67/udp : BOOTP server port
 * 69/udp : TFTP server port

