-- CreateTable
CREATE TABLE "@Usuario" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "@Usuario_pkey" PRIMARY KEY ("id")
);
