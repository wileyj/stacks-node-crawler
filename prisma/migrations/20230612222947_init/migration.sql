-- CreateTable
CREATE TABLE "peers" (
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ip" TEXT,
    "public_key" TEXT NOT NULL,
    "responive" BOOLEAN NOT NULL DEFAULT false,
    "geo_code" TEXT,
    "neighbors" JSONB NOT NULL
);

-- CreateTable
CREATE TABLE "neighbors" (
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ip" TEXT,
    "public_key" TEXT NOT NULL,
    "data" JSONB NOT NULL
);

-- CreateTable
CREATE TABLE "info" (
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ip" TEXT,
    "public_key" TEXT NOT NULL,
    "data" JSONB NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "peers_public_key_key" ON "peers"("public_key");

-- CreateIndex
CREATE UNIQUE INDEX "neighbors_public_key_key" ON "neighbors"("public_key");

-- CreateIndex
CREATE UNIQUE INDEX "info_public_key_key" ON "info"("public_key");
