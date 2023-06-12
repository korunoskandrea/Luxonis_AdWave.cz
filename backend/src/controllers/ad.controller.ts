import { Request, Response } from 'express';
import { PrismaClient, Ad } from '@prisma/client';

const prisma = new PrismaClient();

export const listAds = async (req: Request, res: Response): Promise<void> => {
  try {
    const ads: Ad[] = await prisma.ad.findMany({
      select: {
        id: true, 
        title: true,
        image_url: true
      }
    });

    res.status(200).json({
      ads: ads
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      error: 'Failed to fetch ads'
    });
  }
};

// it selects only the 'id', 'title', 'img_url' fields from the Ads model