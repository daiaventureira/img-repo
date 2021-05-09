# Image Repository

This application is an image repository built using Ruby on Rails and Active Storage. 

## Instalation

First you need to clone this repository to your machine. To do so, run:

```bash
$ git clone git@github.com:daiaventureira/img-repo.git
```

Next step is run the above command in your terminal inside your repository:

```bash
 $ rails new webpacker_css --webpack 
```
## Usage


To run it locally run:

```bash
 $ rails server
```

On your browser type localhost:3000 and it will display the following page:

<img width="1282" alt="Screen Shot 2021-05-09 at 4 56 28 PM" src="https://user-images.githubusercontent.com/44145146/117586656-82017680-b0e7-11eb-8261-be60fd573549.png">

You will need to be logged in so you can access the application, you can either add folders, edit folders by deleting images or add images to it or you can delete a folder. Note: this repository is public, so everybody can have access to your images.
 
The user password can be either recovered or changed.

## Production 

*This aplication its running on production deployed on heroku
*The images are stored on Amazon s3
*You can see this application running clicking in the link below:

[https://img-repo-daiane.herokuapp.com/]

## Informations

* Ruby version:  ruby 3.0.0p0

* Rails version: Rails 6.1.3.1

* System dependencies

* Configuration

* Database creation

 Postgresql

* Database initialization

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



