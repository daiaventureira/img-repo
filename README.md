# Image Repository

This application is an image repository built using Ruby On Rails and Active Storage. 

The Image Repository application has a login functionality. The user after logged in can manipulates folders by creating it, adding images and descriptions to folders, deleting images or folders and downloading images well.
The images as public.

## Requirements

* I am assuming that you have ruby 3 and rails 6 installed on your machine, also you will need PostgreSql.

## Installation

* First you need to clone this repository to your machine. To do so, run:

```bash
$ git clone git@github.com:daiaventureira/img-repo.git
```

* Next step is to run the above commands in your terminal inside your repository img-repo:

```bash
 $ bundle install
```

```bash
 $ rails db:setup
```

## Usage


To run it locally run:

```bash
 $ rails server
```

* If you get a webpacker error, run:

```bash
 $ rails webpacker:install
```

On your browser type: "localhost:3000" and it will display the following page:

<img width="1282" alt="Screen Shot 2021-05-09 at 4 56 28 PM" src="https://user-images.githubusercontent.com/44145146/117586656-82017680-b0e7-11eb-8261-be60fd573549.png">

* You need to be logged in to manipulate folders and images, so first create a login to access the application

<img width="1272" alt="Screen Shot 2021-05-09 at 7 06 28 PM" src="https://user-images.githubusercontent.com/44145146/117599578-0ec42880-b118-11eb-98ea-0af5c817f7bc.png">

* Go to New Folder and add a description and image to it

<img width="1437" alt="Screen Shot 2021-05-09 at 10 45 25 PM" src="https://user-images.githubusercontent.com/44145146/117599662-416e2100-b118-11eb-9b38-b8969e09392b.png">

* It will redirect you to the page where all folders will be and a success message 

 <img width="1437" alt="Screen Shot 2021-05-09 at 10 45 54 PM" src="https://user-images.githubusercontent.com/44145146/117599687-521e9700-b118-11eb-8b7a-f48c5f4c8148.png">

* If you click on "Show" button on folder, you can see the images, delete or download it.

<img width="1437" alt="Screen Shot 2021-05-09 at 11 19 29 PM" src="https://user-images.githubusercontent.com/44145146/117601810-2f42b180-b11d-11eb-8041-50c86a96924a.png">

 
## Production 

* This application was deployed to heroku 

* The images in production are being stored on Amazon s3

* You can see this application running on production clicking by in the link below:

[https://img-repo-daiane.herokuapp.com/]

## Informations

* Ruby version:  ruby 3.0.0p0

* Rails version: Rails 6.1.3.1

* Active Storage

* Amazon s3

* Postgresql


## Tests


* This application includes models and controllers tests.

* Running the models tests:

```bash
$ rails test:models 
```

* Running the controllers tests

```bash
$ rails test:controllers
```



