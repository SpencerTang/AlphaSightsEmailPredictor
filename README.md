AlphaSights Email Predictor
============================

AlphaSights Email Predictor is a simple Ruby on Rails application that uses takes a first name, last name and domain name to generate email predictions.

Setup
=====

After forking and cloning this repository, run <code> bundle install</code> and then <code> rake db:migrate </code>  from the terminal to install any missing our out of date gems.

Testing
========

A basic model test is included, using RSpec. To run the test suite, type rspec from the project's root directory.

Front End
==========

This application uses Javascript to show users a form to enter email information. An AJAX call is used to send form params to the server and render the results in a modal. 

Getting Started
=============

Once you have bundled and all your gems are up to date run <code>rails s</code> in your terminal and open up your browser of choice. Once you are in your browser enter "localhost:3000" in the address bar.

When the page has loaded you will see a short description of the application and a "Let's get started" button. Press the button to precede.

![alt tag](https://raw.githubusercontent.com/SpencerTang/AlphaSightsEmailPredictor/master/Screenshots/Alphasight%20ScreenShot%201.png)

Once the form has displayed you can enter a first name, last name and domain name to generate an email.

![alt tag](https://raw.githubusercontent.com/SpencerTang/AlphaSightsEmailPredictor/master/Screenshots/Alphasight%20Screenshot%202.png)
