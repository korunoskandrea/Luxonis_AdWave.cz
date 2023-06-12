import express from 'express';
import adRoutes from './routes/ad.routes';
import scrapedAdsRoute from './routes/scrape.routes'
import { config } from 'dotenv'
import cors from 'cors';

config()

const app = express();

app.use(cors())

app.use('/api', adRoutes);
app.use('/api', scrapedAdsRoute);

export default app;



console.log("HELLO FROM TYPE_SCRIPT");
