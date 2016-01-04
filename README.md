***KATA***

Welcome to Kata, my small Rails application that keeps me (reasonably) up to date
as a Rails programmer.

In its current incarnation, this is an Web site in which a user maintains a list of
integer **guesses**. Every day (\*), a background job will compute a winning number,
and each user with a guess close enough to that number will be flagged as "winning" for
that day.

It's a pretty dumb application, but it exercises the basic Rails stack sufficiently.


(\*) Currently, there are no background jobs--that's yet to be added.  So, the daily
contest (\*\*) will be computed by hand.

(\*\*) The daily contest isn't implemented yet, either.  So, to be completely honest...the
only functionality currently in the application is that users can sign up and
can each maintain their own collection of guessed numbers.  Pretty slick, eh?
