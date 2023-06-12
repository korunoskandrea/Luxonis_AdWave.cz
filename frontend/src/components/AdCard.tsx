import React from "react";
import {Ad} from "../models/Ad.model";

const AdsCard = ({ad}: {ad: Ad}) => {
    return (
            <div className="container">
                <div className="col s6 ">
                    <div className="card extra-large">
                        <div className="card-image">
                            <img className="responsive-img" src={ad.image_url} alt={ad.title}/>
                            <span className="card-title" >{ad.title}</span>
                        </div>
                        <div className="card-content">
                            <p>{ad.title}</p>
                        </div>
                    </div>
                </div>
            </div>
    );
};

export default AdsCard;
