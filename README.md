#Auto p.nju(Linux Version)
##Overview
On Windows, we want to log into the campus network automatically. It is the same when it comes to Linux/Unix, especially when a computer running Linux is being functioned as a router.

Particularly, our Raspberry Pi Router is required to keep online. Even if we make it restart at a very time point, when it is powered up again, of course Raspberry Pi needs to connect to the network intelligently. That's why this program is written.

*Actually, this is just a very simple shell script.*

##Getting Started
###Dependencies
####jq
NIC returns the login result as a JSON object. Although we can resolve it by something such as regex, a proper JSON encoder **jq** frees us from that boring work.  
`Auto p.nju-Linux` is depending it. Before starting using, simply install `jq` to your computer running Linux with any method you like.

###Configuration
At the start of this shell script, you need to assign two variables, `username` and `password`, to a proper value.

###Run!
In any *sh environment, execute it as the normal script.

##~~正しい食べ方~~
It seems that something is left out... Yeah, the login operaton is still manual. The easiest way to realize is running it as a timed task with `cron`.
