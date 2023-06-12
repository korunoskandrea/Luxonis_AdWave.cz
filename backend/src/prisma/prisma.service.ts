import { PrismaClient } from "@prisma/client"
import { config } from 'dotenv'
config()

export class PrismaService extends PrismaClient {
    constructor() {
        super({
            datasources:{
                db: {
                    url: process.env.DATABASE_URL
                }, 
            },
        });
    }
}