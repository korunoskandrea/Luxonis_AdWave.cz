"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.PrismaService = void 0;
const client_1 = require("@prisma/client");
const dotenv_1 = require("dotenv");
(0, dotenv_1.config)();
class PrismaService extends client_1.PrismaClient {
    constructor() {
        super({
            datasources: {
                db: {
                    url: process.env.DATABASE_URL
                },
            },
        });
    }
}
exports.PrismaService = PrismaService;
