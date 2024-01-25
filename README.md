# Star Schema Playground

Support code for Pluralsight course
[Star Schema Foundations](https://app.pluralsight.com/library/courses/star-schema-foundations/table-of-contents).

## DBeaver

A docker-based configuration for DBeaver is provided. Run (from this directory)

```sh
docker-compose build
docker-compose up -d
```

Visit <http://localhost:8080> and create a `cbadmin` account using the wizard.
See the [docker-compose.yml](./docker-compose.yml) file for the Database connection
credentials. This is intended for training and not a production setup!
