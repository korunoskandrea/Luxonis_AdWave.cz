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
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.scrapedAds = void 0;
const puppeteer_1 = __importDefault(require("puppeteer"));
const prisma_service_1 = require("../prisma/prisma.service");
const delay = (milliseconds) => new Promise((resolve) => setTimeout(resolve, milliseconds));
const scrapedAds = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const prisma = new prisma_service_1.PrismaService();
    try {
        let currPage = 1;
        const data = [];
        while (data.length < 500) {
            const browser = yield puppeteer_1.default.launch({ headless: false });
            const page = yield browser.newPage();
            yield page.goto(`https://www.sreality.cz/en/search/for-sale/apartments?page=${currPage}`);
            yield page.waitForTimeout(2000);
            yield page.waitForSelector('.name.ng-binding');
            yield page.waitForSelector('preact a img');
            const scrapedData = yield page.evaluate(() => {
                var _a;
                const titleElements = document.querySelectorAll('.name');
                const imgUrlElements = document.querySelectorAll('preact a img');
                const newData = [];
                for (let i = 0; i < titleElements.length; i++) {
                    const title = titleElements[i].textContent;
                    const imgUrl = (_a = imgUrlElements[i]) === null || _a === void 0 ? void 0 : _a.getAttribute('src');
                    if (title && imgUrl && !imgUrl.endsWith('.svg')) {
                        newData.push({ title, imgUrl });
                    }
                }
                return newData;
            });
            yield browser.close();
            if (scrapedData.length === 0) {
                console.log('No data found on page', currPage);
                break;
            }
            for (const { title, imgUrl } of scrapedData) {
                if (data.length === 500) {
                    break;
                }
                yield prisma.ad.create({
                    data: {
                        title: title,
                        image_url: imgUrl
                    }
                });
                data.push({ title, imgUrl });
            }
            currPage++;
        }
        console.log(data);
        console.log(data.length);
        console.log(currPage);
    }
    catch (error) {
        console.error(error);
        res.status(500).json({
            error: 'Failed to scrape ads'
        });
    }
});
exports.scrapedAds = scrapedAds;
