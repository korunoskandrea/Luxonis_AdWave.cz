-- CreateTable
CREATE TABLE "Ad" (
    "id" SERIAL NOT NULL,
    "title" VARCHAR(100) NOT NULL,
    "image_url" VARCHAR(200) NOT NULL,

    CONSTRAINT "Ad_pkey" PRIMARY KEY ("id")
);
