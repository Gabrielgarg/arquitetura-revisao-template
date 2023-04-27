import express, { Request, Response } from "express"
import cors from "cors"

const app = express()

//O uso do cors permite que outras pessoas acessem aos dados do codigo(deploy).
app.use(cors())

//O express.json faz a conversao do que vem no json da api e volta aqui como objeto, na hora de envio transforma novamente.
app.use(express.json())

//Escolhe a porta que vai abrir o servidor, e manda 1 console falando se deu certo.
app.listen(3003, ()=>console.log("Servidor rodando na porta 3003"))

//Criando 1 endpoint, que é o que se comunica direto com a api
app.get("/ping", (req:Request, res: Response) =>{
    res.status(200).send("pong")
})