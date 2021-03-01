<p align="center">
<img src="Simple%20Green%20Tree%20Art%20%26%20Design%20Logo.gif" width="300">
  </p>
  
# EcoComet
*Your personal assistant for a sustainable life! Making UTD greener one step at a time!*

*2nd place winner overall at HackUTD 2021, and 2nd place winner for the HackUTD Student Government challenge.*

## Inspiration
Our app takes inspiration from the Forest app as well as an affinity to preserve and protect the environment around us. Our goal was to create an incentive for recycling by allowing users to classify items as recyclable, and add trees to their virtual forest if they find and classify recyclable items.

## What it does
Our mobile app serves to help users develop sustainable habits by classifying images as recyclable/non-recyclable. We also provide tips on how to have a more sustainable life, as well as places to recycle trash at UTD!

## How we built it
Our backend development team trained a machine-learning algorithm to classify trash as recyclable or nonrecyclable and other categories. This was done using Python. We are using around 10000 images categorized into books, cardboard, curtains, glass, metal , organic, paper, plastic, other trash. We used a CNN (Resnet) model for training the classifier getting an accuracy of around 55% with 10 epochs. 
The backend also stores the user details in a CockroachDB database and the services are deployed on Google Cloud instance. 
The front end is built with Android Studio and Flutter, and utilizes many packages including the Google Maps API to show places near UTD to recycle. 

## Challenges we ran into
The back-end's biggest challenges were training and deploying the classifier to accurately categorize the wastes. Another was with the integration of the Rest API with Flutter.

## What's next for EcoComet
We would like to find better ways to encourage sustainability by creating a points system for the user to keep track of their recycling habits. Our goal is to make UTD a greener campus, one little habit at a time!
