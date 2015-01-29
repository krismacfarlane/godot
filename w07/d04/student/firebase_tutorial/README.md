# Teach Yourself Firebase

### Part 1: What is Firebase?

Answer the following questions:





1. What is Firebase?
  + What is the company?
  Google acquired it.
  + What is the technology?
  a powerful API to store and sync data in realtime
1. Why would someone use it; what is it for?
tool used to create realtime apps; saves time; uses client-side code/API
 doesn't just SAVE the data, it also updates it instantly on web and mobile devices
1. What technologies does it replace?
  replaces having your backend database, any cloud data store service
  + What are the pros/cons of using it versus a competing technology?
 works offline! syncs once you get connected
 works on every platform
 stored as standard JSON, making is accessible
 secure -- requires encryption for all data transfers; data is replicated and backed up
 place to store all your static files and they are served across a Content Delivery Network
1. How do you use it?
  + Where do you start when using it?
https://www.firebase.com/how-it-works.html
6 easy steps - very similar to redis. it is a persistence database

***Do not go on. We will answer the above questions as a class first!***

---

### Part 2: Begin Using Firebase

Sign up for [the service][firebase], if you haven't yet. Then log in.

Answer the following questions:

1. What did you get with your sign up?
1. What are the possible tools you can use to learn Firebase?


### Part 3: Do the [Tutorial][firebase-tutorial]!

When you are finished, answer the following questions. Remember: **don't just
_do_ the tutorial!** You are trying to learn this technology: play around and
explore within the framework of the tutorial. Test what you are doing *along the
way*!

1. What happens when you call `Firebase#set`?
set
  + Is there a difference between passing `Firebase#set` a `String`
    or an `Object` as a parameter? If so, what is it? If not, why not?
    when passing a string you get a hash within a hash; if its an object then you get a key-value pair that descends from the reference
1. How is our "Firebase" structured?
   it is structured exactly like our json object
-objects that point at arrays
1. What is the general rule for how data can be represented in our "Firebase"?
   That is, what data type(s) does it hold?
   strings, booleans, integers
1. What is the difference between `Firebase#set` and `Firebase#push`?
 #set overwrites, #push appends/updates a list
1. What does `Firebase#push` return?
returns information about what I'm assuming is backend stuff? and appends to the list
1. What does `Firebase#on` do? Have we seen this sort of function before?
it is a callback method that takes two arguments: the event type and the callback type.
1. What are the event types that Firebase offers us?
child_added, child_changed, child_removed, child_moved
these are read event types
1. What is the purpose of a callback for a `child_added` function?
   + Is there more than one purpose?
   + What data is passed to the callback?
main use is to retrieve a list of items. event is triggered for each existing child and then again for every new child. it is a snapshot with the new data.
it can also be used to get specific information about an individual object
1. Do you have the word *undefined* showing up in your chat log? If so, why?
yes! IDK!
1. What happens if more than one of you uses the same URL Firebase data
  reference?

***Do not go on. We will answer the above questions as a class first!***

---

### Part 4: Beyond the Demo Code

1. Change the demo code to include an HTML `input` for the ID of the `Firebase`,
   and set it by default to your own from your demo.
1. Rewrite the script to dynamically link to a `Firebase` based on the contents
   of the `input`. Use the provided code for examples!
1. Link to one another's `Firebase`s and chat!

<!-- Links -->

[firebase]:          https://www.firebase.com/
[firebase-tutorial]: https://www.firebase.com/tutorial/#gettingstarted
