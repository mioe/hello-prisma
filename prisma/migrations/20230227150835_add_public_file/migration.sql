-- CreateTable
CREATE TABLE "PublicFile" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "url" TEXT NOT NULL,
    "key" TEXT NOT NULL,
    "size" INTEGER NOT NULL,

    CONSTRAINT "PublicFile_pkey" PRIMARY KEY ("id")
);
