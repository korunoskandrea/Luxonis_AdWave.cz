"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.listAds = void 0;
const client_1 = require("@prisma/client");
const prisma = new client_1.PrismaClient();
const listAds = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    try {
        const ads = yield prisma.ad.findMany({
            select: {
                id: true,
                title: true,
                image_url: true
            }
        });
        res.status(200).json({
            ads: ads
        });
    }
    catch (error) {
        console.error(error);
        res.status(500).json({
            error: 'Failed to fetch ads'
        });
    }
});
exports.listAds = listAds;
// it selects only the 'id', 'title', 'img_url' fields from the Ads model
