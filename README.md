# MakersBnb Specification
We would like a web application that allows users to list spaces they have available, and to hire spaces for the night.

## Headline specifications

* Any signed-up user can list a new space.
* Users can list multiple spaces.
* Users should be able to name their space, provide a short description of the space, and a price per night.
* Users should be able to offer a range of dates where their space is available.
* Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
* Nights for which a space has already been booked should not be available for users to book that space.
* Until a user has confirmed a booking request, that space can still be booked for that night.

## Nice-to-haves

* Users should receive an email whenever one of the following happens:
* They sign up
* They create a space
* They update a space
* A user requests to book their space
* They confirm a request
* They request to book a space
* Their request to book a space is confirmed
* Their request to book a space is denied
* Users should receive a text message to a provided number whenever one of the following happens:
* A user requests to book their space
* Their request to book a space is confirmed
* Their request to book a space is denied
* A ‘chat’ functionality once a space has been booked, allowing users whose space-booking request has been confirmed to chat with the user that owns that space
* Basic payment implementation though Stripe.

# User stories
```
As a user
So I can list a new space 
I want to sign up to MakersBnb
```
```
As a user 
So I can advertise my properties
I want to be able to list my space
```
```
As a user 
So people can find my property
I want to be able to name my spaces
```
```
As a user
So I can market my property
I want to be able to provide a short description of the space
```
```
As a user 
So people can find a property within their budget
I want to be able to provide a price per night
```
```
As a user 
So I can show space availability
I want to be able to offer a range of dates where the space is available
```
```
As a signed-up user 
So I can request a space for one night
I want to be able to hire a space for one night
```
```
As a user 
So I can confirm a booking 
I want to be able to approve user request
```
```
As a user
So I am not disappointed 
I want to see if a space is no longer available 
```
```
As a user 
So I can ensure my spaces are not double booked
I want spaces to be displayed as unavailable once booked
```
```
As a user 
So I can avoid losing potential renters 
I want to ensure the space can still be booked until the booking request is confirmed
```
# Members
* Keldra Smith-Junkere - https://github.com/KeldraSJ
* Laura Maddaluno - https://github.com/LauraMaddaluno
* Jordan Veness - https://github.com/jordanveness
* Paul Cooper - https://github.com/Paul72187
