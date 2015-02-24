## Intro to Ajax

Today, we dive into Ajax, but what the heck is Ajax? You've been tasked with finding out.

#### Directions

1. Take 15-20 minutes to read [jQuery's intro to AJAX documentation](http://learn.jquery.com/ajax/).
1. Research AJAX to answer the following questions:
    1. What is Ajax?
      - AJAX is a technique/technology that allows developers to use JavaSript to make HTTP requests to the server. This allows them to dynamically send and retrieve data without reloading the page.
      - Answer: Asynchronous JavaScript and XML. It allows browsers to communication with a server without requiring a page reload. Requests are triggered by JavaScript code and hits an API.
    1. What are the benefits of Ajax?
      - Answer: It is quick and efficient and does not require user input. The rest of your code can keep executing, while an AJAX request is being processed.
    1. Are there any alternatives to Ajax?
      - Answer: Yes - flash, XUL, Applets, SVG (Scalable Vector Graphics)


- Generally cannot be used across domains, since it violates the same origin policy. Look up JSONP(JSON with Padding).

- Data types: text (simple strings), html (blocks of HTML), script, json, jsonp, xml

- the core jquery method is $.ajax()
  - options are:
    - async, cache, complete, context, data, dataType, error, jsonp, success, timeout, traditional, type, url
