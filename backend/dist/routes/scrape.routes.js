"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const scrape_controller_1 = require("../controllers/scrape.controller");
const router = express_1.default.Router();
router.get('/ads/scrape', scrape_controller_1.scrapedAds);
exports.default = router;
