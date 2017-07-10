 # 9.1 How the Web Works

###A. What are some common HTTP status codes?


* 200 OK: The request has succeeded. The information returned with the response is dependent on the method used in the request.

- 300 Multiple Choices: The requested resource has different choices and cannot be resolved into one. For example, there may be several index.html pages depending on which language is wanted (such as Dutch).
- 301 Moved Permanently: The requested resource has been assigned a new permanent URL and any future references to this resource should use one of the returned URLs.

- 302 Found: The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests.

- 304 Not Modified: If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. The 304 response MUST NOT contain a message-body, and thus is always terminated by the first empty line after the header fields.

- 307 Temporary Redirect: The requested resource resides temporarily under a different URI. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.
- 400 Bad Request: The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.

- 401 Unauthorized: The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.
- 403 Forbidden: The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.

- 404 Not Found: The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.

- 410 Gone: The requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent. Clients with link editing capabilities SHOULD delete references to the Request-URI after user approval.

- 500 Internal Server Error: The server encountered an unexpected condition which prevented it from fulfilling the request.

- 501 Not Implemented: The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.

- 503 Service Unavailable: The server is currently unable to handle the request due to a temporary overloading or maintenance of the server. The implication is that this is a temporary condition which will be alleviated after some delay.

- 550 Permission denied: The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. You may be trying to upload to the wrong directory or trying to delete a file.

###B. What is the difference between a GET request and a POST request? When might each be used?

- POST requests supply additional data from the client (browser) to the server in the message body. 
- GET requests include all required data in the URL. 

Forms in HTML can use either method by specifying method="POST" or method="GET" (default) in the <form> element. The method specified determines how form data is submitted to the server. When the method is GET, all form data is encoded into the URL, appended to the action URL as query string parameters. With POST, form data appears within the message body of the HTTP request.

###C. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are small files which are stored on a user's computer. They are designed to hold a modest amount of data specific to a particular client and website, and can be accessed either by the web server or the client computer. This allows the server to deliver a page tailored to a particular user, or the page itself can contain some script which is aware of the data in the cookie and so is able to carry information from one visit to the website (or related site) to the next.