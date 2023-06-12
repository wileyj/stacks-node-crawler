```
npm i
npm run start
```

## Getting Started

- PostgreSQL is a required dependency
  example with Docker:

```bash
$ docker run -d \
    --rm \
    --name postgres \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=postgres \
    -v $(pwd)/postgres_data:/var/lib/postgresql/data \
postgres:15-alpine
```

or

```bash
$ run_postgres.sh
```

```bash
# Clone this repo and enter its directory
git clone https://github.com/stacksfoundation/stacksstatus && cd stacksstatus


# Create .env file
cp .env.local.example .env

# update .env file with DB connection options (HOST, USER, PASSWORD, etc) and apply migrations
npx prisma migrate dev --name init

# Install dependencies
npm i

# # Run development server
# npm run dev
# # or
# yarn dev

# Run crawler
```

npm run start

```

```
