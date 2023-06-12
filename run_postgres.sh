docker run -d \
    --rm \
    --name postgres \
    -p 5432:5432 \
    -e POSTGRES_PASSWORD="postgres" \
    -v $(pwd)/postgres_data:/var/lib/postgresql/data \
postgres:15-alpine
