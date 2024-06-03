import prismaClient from "../../prisma";

interface OrderRequest{
    orderId: string;
}

export default class SendOrderService{
    async execute({orderId}:OrderRequest){
        const order = await prismaClient.pedido.update({
            where:{
                id:orderId
            },
        })
        return order;
    }
}