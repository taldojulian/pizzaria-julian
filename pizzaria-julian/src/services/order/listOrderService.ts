import prismaClient from "../../prisma";

export default class ListOrderService{
    async execute(){
        const order = await prismaClient.pedido.findMany({
            select:{
                id: true,
                name: true,
                mesa: true,
                status: true,
                criadoEm: true,
            }
        })
        return order
    }
}