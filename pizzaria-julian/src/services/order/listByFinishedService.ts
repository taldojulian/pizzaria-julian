import prismaClient from "../../prisma";

interface DateRequest{
    date: Date
}

export default class ListByFinishedService{
    async execute({date}:DateRequest){
        if (!date){
            throw new Error("Informe uma data!")
        }
        
        let data = new Date(date);
        
        data.setDate(data.getDate() + 1);
        
        const list = await prismaClient.pedido.findMany({
            where:{
                status: true,
            },
            select:{
                id: true,
                name: true,
                mesa: true,
                status: true,
            }
        })
        return list
    }
}