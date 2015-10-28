# Insecure Blog

A very insecure blog app that is designed to be attacked.

### Setup

To start, don't look at the code.  Try to figure out as much as you can before looking at the code.

```
rake db:create
rake db:migrate
rake db:seed
```

## Possible Attacks

1. __Brute force account access__.  The app was written with very bad password validation.  Try to write a script that will brute force the password.  __HINT__: Even though there is no link to all of the restful routes for a user, they are still accessible from the URL.  It may help you get the information you need.

     Answer:  See the attached password_crack.rb.  The admin's password is aa!


2. __Password__: Something about the password create is not to secure.

Answer:  Creating a New User.  The input type for the password is text.  It would be more secure if it was password.


2. __Simple escalation of privileges__: Certain features of the app are not restricted properly.  Find out which features those are and prove that is exploitable.

  Answer:  A basic user can destroy/edit/ any user's posts.


3. __Escalation of privileges++__: It is possible in the app to have admin power through signup.  Figure out how.

  Answer:  We can create an input field that has a name of user[admin] and set it as true.  The way to resolve this issue is to not permit this param in the permit.require user_params private method that we call when creating a new user.

4. __Session Hijacking__: There are many insecurities about the session.  Try decrypting the session.  What do you see?  What else about the session is not secure?


5. __CSRF__: Prove that the site can be hacked with CSRF.



6. __SQL Injection__: Find a sql injection attack in the site


