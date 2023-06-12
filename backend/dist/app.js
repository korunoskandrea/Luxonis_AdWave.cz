"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const ad_routes_1 = __importDefault(require("./routes/ad.routes"));
const scrape_routes_1 = __importDefault(require("./routes/scrape.routes"));
const dotenv_1 = require("dotenv");
const cors_1 = __importDefault(require("cors"));
(0, dotenv_1.config)();
const app = (0, express_1.default)();
app.use((0, cors_1.default)());
app.use('/api', ad_routes_1.default);
app.use('/api', scrape_routes_1.default);
exports.default = app;
console.log("HELLO FROM TYPE_SCRIPT");
