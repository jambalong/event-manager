# Event Manager

This project is part of the The Odin Project - [Event Manager](https://www.theodinproject.com/lessons/ruby-event-manager) in Ruby curriculum.

## Lesson Overview

Topics that will be learned in this project:

* Manipulate file input and output.
* Read content from a CSV (Comma Separated Value) file.
* Transform it into a standardized format.
* Utilize the data to contact a remote service.
* Populate a template with user data.
* Manipulate strings.
* Access Google’s Civic Information API through the Google API Client Gem.
* Use ERB (Embedded Ruby) for templating.

## Assignment: Clean phone numbers

Similar to the zip codes, the phone numbers suffer from multiple formats and inconsistencies. If we wanted to allow individuals to sign up for mobile alerts with the phone numbers, we would need to make sure all of the numbers are valid and well-formed.

* If the phone number is less than 10 digits, assume that it is a bad number
* If the phone number is 10 digits, assume that it is good
* If the phone number is 11 digits and the first number is 1, trim the 1 and use the remaining 10 digits
* If the phone number is 11 digits and the first number is not 1, then it is a bad number
* If the phone number is more than 11 digits, assume that it is a bad number

## Assignment: Time targeting

The boss is already thinking about the next conference: “Next year I want to make better use of our Google and Facebook advertising. Find out which hours of the day the most people registered, so we can run more ads during those hours.” Interesting!

Using the registration date and time we want to find out what the peak registration hours are.

* Ruby has Date and Time classes that will be very useful for this task.

* For a quick overview, check out this Ruby Guides article.

* Explore the documentation to become familiar with the available methods, especially `#strptime`, `#strftime`, and `#hour`.

## Assignment: Day of the week targeting

The big boss gets excited about the results from your hourly tabulations. It looks like there are some hours that are clearly more important than others. But now, tantalized, she wants to know “What days of the week did most people register?”

* Use `Date#wday` to find out the day of the week.
