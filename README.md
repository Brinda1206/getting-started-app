# Todo App — Dockerized

A simple Node.js to-do list app, containerized as a hands-on Docker learning project. Starting from the existing app code, this project covers writing a custom Dockerfile, running multi-container setups with Docker Compose, persisting data with volumes, and hardening the image for production use.


# What this project demonstrates

- Wrote a custom Dockerfile to containerize an existing Node.js application
- Used Docker Compose to run the app alongside a MySQL database as two connected services
- Added a Docker volume so database data survives container restarts
- Reduced final image size using a multi-stage build
- Excluded unnecessary and sensitive files (`.env`, `node_modules`) using `.dockerignore`
- Hardened the container by running the app as a non-root user


## How to run it

Clone the repo, add a `.env` file with the following variables:

MYSQL_ROOT_PASSWORD=yourpassword
MYSQL_DATABASE=todos


Then run:

```bash
docker compose up
```

The app will be available at `http://localhost:3000`.

## Docker Hub

A pre-built image is also available:

```bash
docker pull achu03/my-todo-app
```