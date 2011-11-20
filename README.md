[![Build Status](https://secure.travis-ci.org/steakknife/dfeojm.png)](http://travis-ci.org/steakknife/dfeojm)

DownForEveryoneOrJustMe.com CLI and Ruby API
=============================

This requires internet access and checks DownForEveryoneOrJustMe.com to see if a site is up or down.

Usage
-----
    $ dfeojm www.google.com
    www.google.com is up
    $ dfeojm www.thisdomainisinvalid.com
    www.thisdomainisinvalid.com looks down

Note
----
   dfeojm returns an exit code of 0 is a site is up, or 1 otherwise.
    
Setup
-----
    [sudo] gem install dfeojm

Hacking
-------
Please fork and create a topical branch similar to yournickname-feature-applies_to_version.

Issues
------
Use the github issue tracker.

License
-------

Released under the [MIT license](http://www.opensource.org/licenses/mit-license.php).


Discaimer
---------
This is an unofficial gem and in no way connected with DownForEveryoneOrJustMe.com.


Created by Barry Allard

