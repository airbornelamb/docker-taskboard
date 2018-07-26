# Docker Taskboard

Interface for managing tasks.
https://taskboard.matthewross.me

# Taskboard with docker

Use project : https://taskboard.matthewross.me

## How to use
```Linux
docker run -p 80:80 -d devcrea/taskboard
```

TEst:
`docker run --name taskboard -p 8080:80 -v ~/taskboard:/var/www/html -d devcrea/taskboard`

`git clone https://github.com/airbornelamb/docker-taskboard && cd docker-taskboard/ && docker-compose up`

Got to page http://localhost:8080 and connect with admin/admin
