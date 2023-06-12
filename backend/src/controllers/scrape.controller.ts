import puppeteer from 'puppeteer';
import {Request, Response} from 'express';
import {PrismaService} from "../prisma/prisma.service";
const delay = (milliseconds: number) => new Promise((resolve) => setTimeout(resolve, milliseconds));

export const scrapedAds = async (req: Request, res: Response) => {
    const prisma = new PrismaService()

    try {
        let currPage = 1;
        const data: { title: string, imgUrl: string }[] = [];

        while (data.length < 500) {
            const browser = await puppeteer.launch({ headless: false });
            const page = await browser.newPage();
            await page.goto(`https://www.sreality.cz/en/search/for-sale/apartments?page=${currPage}`);

            await page.waitForTimeout(2000)

            await page.waitForSelector('.name.ng-binding');
            await page.waitForSelector('preact a img');

            const scrapedData = await page.evaluate(() => {
                const titleElements = document.querySelectorAll('.name');
                const imgUrlElements = document.querySelectorAll('preact a img');

                const newData: { title: string, imgUrl: string }[] = [];

                for (let i = 0; i < titleElements.length; i++) {
                    const title = titleElements[i].textContent;
                    const imgUrl = imgUrlElements[i]?.getAttribute('src');

                    if (title && imgUrl && !imgUrl.endsWith('.svg')) {
                            newData.push({ title, imgUrl })
                    }
                }

                return newData;
            });

            await browser.close();

            if (scrapedData.length === 0) {
                console.log('No data found on page', currPage);
                break;
            }

            for (const { title, imgUrl } of scrapedData) {
                if (data.length === 500) {
                    break;
                }
                await prisma.ad.create({
                    data: {
                        title: title,
                        image_url: imgUrl
                    }
                })
                data.push({ title, imgUrl });
            }

            currPage++;
        }


        console.log(data);
        console.log(data.length)
        console.log(currPage)



    } catch (error) {
        console.error(error);
        res.status(500).json({
            error: 'Failed to scrape ads'
        });
    }



};
