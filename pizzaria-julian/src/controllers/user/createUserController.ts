import { Request, Response } from "express";
import { CreateUserService } from "../../services/user/createUserService";

class CreateUserController{

    async handle(req: Request, res: Response) {
        const {nome, email, senha} = req.body;

        const createUserService = new CreateUserService();
        const user = await createUserService.execute({nome, email, senha});
        return res.json({user})
    }
}

export{CreateUserController}