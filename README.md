<a name="readme-top"></a>


[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://www.keycloak.org/">
    <img src="https://www.keycloak.org/resources/images/logo.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Keycloak</h3>

  <p align="center">
    Keycloak is an open-source Identity and Access Management solution aimed at modern applications and services. It makes it easy to secure applications and services with little to no code.
    <br />
    <a href="https://www.keycloak.org/documentation"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://authsp.azurewebsites.net">View Demo</a>
    ·
    <a href="https://github.com/Great-Side-Projects/keycloak/issues">Report Bug</a>
    ·
    <a href="https://github.com/Great-Side-Projects/keycloak/issues/new">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#Architecture-design">Architecture design</a></li>
        <li><a href="#Architecture-diagram">Architecture diagram</a></li>
     </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot-UI]](https://authsp.azurewebsites.net/)

This is Keycloak, an open-source project that provides an identity and access management solution for modern applications and services. Keycloak makes it easy to secure applications and services with little to no code. It was born out of the need to have an authentication and authorization service for the open-source projects (Side Projects) that I am developing.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Built With

This project is built with the following technologies:


* [![Docker][DockerImage]](https://www.docker.com/)
* [![Appservice][AzureWebApp]](https://azure.microsoft.com/es-es/services/app-service/web/)
* [![PostgreSQL][PostgreSQL]](https://www.postgresql.org/)

### Architecture design

The architecture design is based in Azure cloud services, the project is deployed in Azure App Service, the database is Azure SQL Database, the CI/CD is GitHub Actions.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Architecture diagram
[![Architecture diagram][architecture-diagram]](https://authsp.azurewebsites.net/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

Here you can find the steps to run the project in your local environment to explore the keycloak proyect. 

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.

You need to have a database created in PostgreSQL, for example "kecloak" see https://www.keycloak.org/server/db . 


* Docker
* PostgresSQL database

### Installation


1. Clone the repo
   ```sh
   git clone https://github.com/Great-Side-Projects/keycloak.git
   ```
2. Go to the root folder of the project
   ```sh
   cd keycloak
   ``` 
3.  find a docker file "Dockerfile"  and set the environment variables in the dockerfile. root folder of the project
    ```dockerfile
    ENV KC_DB_URL=jdbc:postgresql://localhost:5432/keycloak \ # URL of the database
        KC_DB=postgres \
        KC_HEALTH_ENABLED=true \
        KC_METRICS_ENABLED=true \
        KC_DB_USERNAME=username_db \ # Username of the database
        KC_DB_PASSWORD=mypassword_db \ # Password of the database
        KEYCLOAK_ADMIN=admin \ # Username of the keycloak
        KEYCLOAK_ADMIN_PASSWORD=admin \ # Password of the keycloak
        KC_HOSTNAME=http://localhost:9090 \ # URL of the keycloak, to local environment http://localhost:9090  
    ```

4. Create image and run with docker. root folder of the project 
 
   ```sh
    docker build -t keycloak:latest .
    docker run -p 9090:8080 keycloak:latest
   ```
8. Open your browser and go to `http://localhost:9090/` to see the UI keycloak login.
9. Login with the user and password that you have configured in the dockerfile.
    ```dockerfile
    ENV
        KEYCLOAK_USER=admin
        KEYCLOAK_PASSWORD=admin
    ```
10. Enjoy!


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

### Easy way:
Go to `http://localhost:9090/` and you can see the UI to manage the keycloak.


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ROADMAP -->
## Roadmap

- [x] Implement Docker for deployment
- [x] Implement CI/CD with GitHub Actions
- [x] Implement Azure App Service for deployment
- [x] Implement Azure SQL Database for data storage
- [ ] Modify the login page keyclok realm with the custom design 


See the [open issues](https://github.com/Great-Side-Projects/keycloak/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the "develop" Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Angel Morales - [LinkedIn](https://www.linkedin.com/in/angelmoralesb/) - angelmoralesb@gmail.com

Project Link: [https://github.com/Great-Side-Projects/quickshortapi](https://github.com/Great-Side-Projects/quickshortapi)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Keycloak Server Guides](https://www.keycloak.org/guides#server)
* [Choose an Open Source License](https://choosealicense.com)
* [Docker](https://www.docker.com/)
* [GitHub Actions](https://docs.github.com/es/actions)
* [Azure App Service](https://azure.microsoft.com/es-es/services/app-service/web/)
* [Azure SQL Database PostgreSQL](https://azure.microsoft.com/es-es/products/postgresql)
* [Keycloak](https://www.keycloak.org/)
* [Keycloak Docker](https://www.keycloak.org/getting-started/getting-started-docker)
* [Azure Container Registry](https://learn.microsoft.com/en-us/azure/container-registry/container-registry-get-started-docker-cli?tabs=azure-cli)

 
<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/Great-Side-Projects/keycloak/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/Great-Side-Projects/keycloak/forks
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/Great-Side-Projects/keycloak/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/
[issues-url]: https://github.com/Great-Side-Projects/keycloak/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/Great-Side-Projects/quickshortapi/blob/main/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/angelmoralesb/
[product-screenshot-UI]: images/screenshotUI.png
[DockerImage]: https://img.shields.io/badge/Docker-0db7ed?style=for-the-badge&logo=docker&logoColor=white
[AzureWebApp]: https://img.shields.io/badge/Azure%20Web%20App-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white
[PostgreSQL]: https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white
[architecture-diagram]: images/Keycloak-Architecture-Design.drawio.png




















