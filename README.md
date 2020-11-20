# gomeditateapp-docker

![Dancing Gopher](https://github.com/smithlabs/github-assets/blob/main/gif/gomeditateapp.gif)

A [Dockerized](https://www.docker.com/) meditation timer web app written in [Golang](https://golang.org/), [JavaScript](https://www.javascript.com/), [CSS](https://www.w3schools.com/css/), and [HTML5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/HTML5). 

**Links**

View the [web application](http://gma-dockerhub-162650346.us-east-1.elb.amazonaws.com/) deployed to AWS. 

View my [smithlabs/gomeditate-terraform](https://github.com/smithlabs/gomeditateapp-terraform) repo with full code for the Terraform and AWS deploy.

## 🛰️ Technologies

![Docker](https://img.shields.io/badge/-Docker-black?style=flat-square&logo=docker)
![Go](https://img.shields.io/badge/-Go-3E3E3E?style=flat-square&logo=Go)
![JavaScript](https://img.shields.io/badge/-JavaScript-black?style=flat-square&logo=javascript)
![CSS3](https://img.shields.io/badge/-CSS3-1572B6?style=flat-square&logo=css3)
![HTML5](https://img.shields.io/badge/-HTML5-E34F26?style=flat-square&logo=html5&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/-GitHub%20Actions-181717?style=flat-square&logo=github)

## 🔭 Overview

This following GitHub Actions are setup.

| Event | Description | DockerHub | GitHub Action |
|-|-|-|-|
| Main commit | Build and pushes image to DockerHub with latest tag. | smithlabs/gomeditateapp:latest | [docker-latest.yml](https://github.com/smithlabs/gomeditateapp-docker/blob/main/.github/workflows/docker-latest.yml) |
| Tagging | Build and pushes image to DockerHub with the matching tag. | smithlabs/gomeditateapp:1.0.0 | [docker-tags.yml](https://github.com/smithlabs/gomeditateapp-docker/blob/main/.github/workflows/docker-tags.yml) |
| Pull request | Builds and pushes the image to DockerHub with the pr_build tag. | smithlabs/gomeditateapp:pr_build | [docker-pr.yml](https://github.com/smithlabs/gomeditateapp-docker/blob/main/.github/workflows/docker-pr.yml) |


## 🐾 Pre-requisites

You must have [Docker](https://docs.docker.com/get-docker/) installed on your computer.

## 🐇 Quickstart

**Method One**: Pull the container from my [Dockerhub](https://hub.docker.com/repository/docker/smithlabs/gomeditateapp)
``` bash
sudo docker run --rm --name app -d -p 8080:8080 smithlabs/gomeditateapp:1.0.0
```

Access the web app in your browser: http://localhost:8080


Clean up when done.
``` bash
sudo docker stop app
```

**Method Two**: Build the multi-stage container and run it.

``` bash
git clone https://github.com/smithlabs/gomeditateapp-docker && cd gomeditateapp-docker
sudo docker build -t gomeditateapp .
sudo docker run --rm --name app -d -p 8080:8080 gomeditateapp
```

Access the web app in your browser: http://localhost:8080

![Rain](https://github.com/smithlabs/github-assets/raw/main/gif/rain.gif)

![Beach](https://github.com/smithlabs/github-assets/blob/main/gif/beach.gif)

Clean up when done.
``` bash
sudo docker stop app
```

**Method Three**: Deploy this project to AWS using Terraform.

See my other repository with full code and examples: [smithlabs/gomeditate-terraform](https://github.com/smithlabs/gomeditateapp-terraform)


**[⬆ back to top](#%EF%B8%8F-technologies)**


## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests and examples as appropriate.

## 🏆 Show your support

Please ⭐️ this repository if this project helped you!

## Resources

- [EmojiTerra](https://emojiterra.com/) - Copy and paste emojis into your README

## 📝License

[MIT](https://github.com/smithlabs/hello-world-terraform-go-demo/blob/main/LICENSE)
