import express from 'express';
import { listAds } from '../controllers/ad.controller';

const router = express.Router();

router.get('/ads', listAds);

export default router;