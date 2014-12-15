## Straight Sluething with cURL

![:image](hawt_holmes.jpg)
We're going to begin exploring `HTTP` using a command found in `Bash` called `cURL`

`cURL` is used to transfer a `URL`

## First

Work with a partner! You'll have to suss out just is happening so talking it out will help.

Start with the following.

Enter the below line into your terminal and observe the output.

1. What information is received?
1. Is this the same information you get when visiting the URL in a browser?

"<HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
<TITLE>301 Moved</TITLE></HEAD><BODY>
<H1>301 Moved</H1>
The document has moved
<A HREF="https://mail.google.com/mail/">here</A>.
</BODY></HTML>"

This is different information....you are seeing the page source, instead of the front-end stuff.
```
curl https://www.gmail.com
```

Rerun the above `cURL` command but append it with ` --include`

```
curl https://www.gmail.com --include
```

1. What additional information do you receive?
1. Use curl's `man` page to find out what `--include` does.

HTTP/1.1 301 Moved Permanently
Content-length: 0
Location: https://www.github.com/
Connection: close

--include includes the header, like the server name, the date of the document, etc

### How to use `man` pages

1. Type `man curl` into your `Bash` prompt to bring up the manual page.

1. From the `man` page, type `/`, enter search term and hit `<enter>`

1. You can jump to different occurrences of the search word use `n`

1. press `q` to exit a `man` page.

## Rinse Repeat

1. Repeat the above steps with the following websites. **Be sure to run each command with the different flags on and off.**

```
curl http://www.google.com
curl http://www.newyorktimes.com
curl http://www.facebook.com
curl https://github.com/ga-students/godot

kristenmacfarlane ~/dev/wdi/godot/w03/d01/student on master[!]
$ curl https://github.com/ga-students/godot
{"error":"Not Found"} --> probably because it is a private site

curl http://www.amazon.com
curl http://www.newyorktimes.com
curl https://www.cnn.com

$ curl https://www.cnn.com
curl: (7) Failed to connect to www.cnn.com port 443: Connection refused


curl http://www.cnn.com
curl https://www.hbo.com
curl https://httbin.org
curl http://httpbin.org
```

1. What is at the top part of every request?

without the include: all requests have <!DOCTYPE HTML> at the top. with the include:

HTTP/1.1 200 OK
Server: nginx
Date: Mon, 15 Dec 2014 16:01:28 GMT
Content-Type: text/html
Transfer-Encoding: chunked
Connection: keep-alive
Set-Cookie: CG=US:NY:New+York; path=/
Last-Modified: Mon, 15 Dec 2014 16:01:11 GMT
Vary: Accept-Encoding
Cache-Control: max-age=60, private
Expires: Mon, 15 Dec 2014 16:02:26 GMT --> or something comparable

1. What parts are different across the different sites?

https sites do not allow you access to the page source

1. Try some additional sites, what **numbers** are starting to appear often on the first line?

## More verbosely

`cURL` can take multiple flags so try appending all the above commands
with `  --verbose` as well as additional flags.

verbose gives you more information

1. What do the following symbols mean in the displayed output?

```
* - messages
> - end
< - start
```

1. What's a Hostname? - the unique name that a network device is known as on a network
1. What's a DNS cache? DNS is the Domain Name System and converts the computer's host name into an IP address. It is used to communicate with the web server.
1. What are the numbers after the Hostname when it connects? IDK
1. What is port 80? App-specific software construct that serves as a communications endpoint in a computer's host operating system. Ports are used to uniquely identify different apps. Port 80 is the default port used in HTTP,
1. Do any URLs use a different port? port 443 is the default for HTTPS

## Take it easy

1. What does ` --limit-rate 1` do?

specifies the max transfer rate in bytes/second that you want curl to use. for example, if you have a limited pipe and you dont want the entire bandwidth to be used.

## Don't tell me what I can't do!

Try the following with your above links

```
curl -X POST http://www.google.com
curl -X JUMP http://www.google.com
```
When combined with -X, --request  <command>,  this  option
can be used to send an UIDL command instead, so the user may use
the email's unique identifier rather than  it's  message  id  to
make the request.

1. What methods are allowed?

GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, CONNECT, PATCH

1. What Length might be required?

IDK

## In your Browsers

Visit `http://httpbin.org/`

Try `cURL`ing to the links at `http://httpbin.org/`

1. Why might some links be be not linkable?
1. What kind of data is returned?

## More in your browsers and terminal

Visit `http://requestb.in/` and sign up for a bin

Try `cURL`ing the following to your `requestbin`

> Be sure to continue to use `--verbose` and more to better understand the output!

```
curl -X PUT -d "black=mirror" --verbose
```

1. What do the additional flags mean?

Try it again but append `-A <YOUR NAME>`

1. What changes in the output?
1. If you append `?socks=wool` to the end of your `URL`s does something change?
1. If you append `#something` to the end of your `URL`s does it change anything?
1. What is a query string? How do you append multiple ones?
1. What is a URL fragment?

## Where is it?

Use `cURL` to send data to your `request` bin. Append a query string as well

`curl -X POST -d "coffee=black&juice=squeezed" http://requestbin/?breakfast=true`

Try appending `--trace-ascii -` or `--trace -`

Where does the data and query string appear in your requests?
