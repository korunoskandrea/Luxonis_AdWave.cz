import React, {useState, useEffect} from 'react';
import './App.css';
import axios from 'axios'
import AdCard from "./components/AdCard";
import NavBar from "./components/NavBar";
import Pagination from "./components/Pagination";

function App() {
    const [adsFound, setAdsFound] = useState<{ id: number; title: string; image_url: string }[]>([]);
    const [currPage, setCurrentPage] = useState(1);
    const [postsPerPage] = useState(14);
    useEffect(() => {
        fetch('http://host.docker.internal:8081/api/ads')
            .then(res => res.json())
            .then(result => {
                setAdsFound(result.ads);
            })
            .catch(error => {
                console.error('Error fetching ads:', error);
            });
    }, []);

    useEffect(() => {
        console.log('adsFound:', adsFound);
    }, [adsFound]);

    const indexOfLastAd = currPage * postsPerPage;
    const indexOfFirstAd = indexOfLastAd -postsPerPage;
    const  currAds = adsFound.slice(indexOfFirstAd,indexOfLastAd)

    const paginate = (pageNumber: number) => setCurrentPage(pageNumber);

    return (
        <div>
            <NavBar/>
            <div className="App ">
                <div className="row">
                    {adsFound.length === 0 ? (
                        <p>No ads found</p>
                    ) : (
                        currAds.map((ad, index) => (

                            <AdCard key={index} ad={ad}/>
                        ))
                    )}
                </div>
            </div>
            <Pagination
                postsPerPage={postsPerPage}
                totalPosts={adsFound.length}
                paginate={paginate}
            />
        </div>



    );
}

export default App;
