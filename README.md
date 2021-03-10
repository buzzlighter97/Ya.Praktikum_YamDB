![yamdb_workflow](https://github.com/buzzlighter97/yamdb_final/workflows/yamdb_workflow/badge.svg)

https://github.com/buzzlighter97/yamdb_final/actions/workflows/yamdb_workflow.yaml

# YAmdb API

This API allows you to surf a database of different titles of different genres. Also you can add titles, rate them and comment other peoples' reviews.

## Getting Started

To deploy this app locally, you must use Docker.

Check that you are in project root directory and run docker-compose command:

```
docker-compose up -d
```
This command will deploy two containers on your local computer: container with project and postgresql container.

Right after you must migrate properly to create related database.
```
docker exec -it infra_sp2_web_1 python3 manage.py makemigrations
docker exec -it infra_sp2_web_1 python3 manage.py migrate
docker exec -it infra_sp2_web_1 python3 manage.py migrate users
docker exec -it infra_sp2_web_1 python3 manage.py migrate api
```

After that you need to create superuser to manage this API like any other Django project. Following command is going to be helpful:

```
docker exec -it infra_sp2_web_1 python3 manage.py createsuperuser
```
TADAA! API is working locally!

### Prerequisites

To install Docker you need to go to the official website and simply download and run the setup file. Then follow instructions during installation.

### Installing
To apply fixtures run this command:
```
docker exec -it infra_sp2_web_1 python3 manage.py loaddata fixtures.json
```

## Running the tests

To run automatic tests simply run
```
docker exec infra_sp2_web_1 pytest
```

## Built With

* [Django](https://docs.djangoproject.com/en/3.1/) - Web framework used
* [Django REST](https://www.django-rest-framework.org/) - API framework used
* [Docker](https://docs.docker.com/) - Containers management

## Authors

* **Eugeny Nikolaenko**
* **Anna Agarenko** 
* **Ivan Ivanov**

## License

This project is licensed under the MIT License.

## Acknowledgments

Thanks to Yandex.Praktikum and all the code-reviewers!
