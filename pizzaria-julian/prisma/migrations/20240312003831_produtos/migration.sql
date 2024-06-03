
DROP TABLE "@Usuario";

CREATE TABLE "Usuario" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "senha" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Categoria" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Categoria_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Produtos" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "preco" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "banner" TEXT NOT NULL,
    "criadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "idCategoria" TEXT NOT NULL,

    CONSTRAINT "Produtos_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Pedidos" (
    "id" TEXT NOT NULL,
    "mesa" INTEGER NOT NULL,
    "status" BOOLEAN NOT NULL DEFAULT false,
    "rascunho" BOOLEAN NOT NULL DEFAULT true,
    "name" TEXT,
    "criadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Pedidos_pkey" PRIMARY KEY ("id")
);

CREATE TABLE "Itens" (
    "id" TEXT NOT NULL,
    "quantidade" INTEGER NOT NULL,
    "criadoEm" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "idProduto" TEXT NOT NULL,
    "idPedido" TEXT NOT NULL,

    CONSTRAINT "Itens_pkey" PRIMARY KEY ("id")
);

ALTER TABLE "Produtos" ADD CONSTRAINT "Produtos_idCategoria_fkey" FOREIGN KEY ("idCategoria") REFERENCES "Categoria"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "Itens" ADD CONSTRAINT "Itens_idProduto_fkey" FOREIGN KEY ("idProduto") REFERENCES "Produtos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE "Itens" ADD CONSTRAINT "Itens_idPedido_fkey" FOREIGN KEY ("idPedido") REFERENCES "Pedidos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
