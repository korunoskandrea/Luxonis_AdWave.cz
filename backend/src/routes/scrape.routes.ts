import express from 'express';
import { scrapedAds } from '../controllers/scrape.controller';

const router = express.Router();

router.get('/ads/scrape', scrapedAds);

export default router;