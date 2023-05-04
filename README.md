docker-mysql
________


This project was created to help you start your journey to master databases.

With few dependencies, it gives you an operational database with a user-friendly interface ready to be used in your studies and very easy to extend later for other projects.


## Dependencies

- [Make](https://www.gnu.org/software/make/)
- [Docker](https://www.docker.com)
- [Docker Compose](hhttps://docs.docker.com/compose/)
- Any web browser


## How to use

After installing the dependencies mentioned previously, type the following command at your terminal to start the database and the interface to access the database (phpmyadmin).

```bash
make up
```

If everything goes well you should see something similar like the follows as the output

```bash
...
 ✔ Container ppm-mysql-1       Running
 ✔ Container ppm-phpmyadmin-1  Running
```

## Using the interface

You can now access the interface using the following address and credentials.

> url: http://localhost:3333

> user: root

> password: root
