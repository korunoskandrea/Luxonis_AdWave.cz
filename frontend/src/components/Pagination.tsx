import React, {useState} from 'react';

interface PaginationProps {
    postsPerPage: number;
    totalPosts: number;
    paginate: (number: number) => void;
}

const Pagination: React.FC<PaginationProps> = ({postsPerPage, totalPosts, paginate}) => {
    const pageNumbers: number[] = [];
    const [currentPage, setCurrentPage] = useState(1);

    for (let i = 1; i <= Math.ceil(totalPosts / postsPerPage); i++) {
        pageNumbers.push(i);
    }

    const goToPreviousPage = () => {
        if (currentPage > 1) {
            const previousPage = currentPage - 1;
            setCurrentPage(previousPage);
            paginate(previousPage);
        }
    };

    const goToNextPage = () => {
        if (currentPage < 37) {
            const nextPage = currentPage + 1;
            setCurrentPage(nextPage);
            paginate(nextPage);
        }
    };

    return (
        <nav>
            <div className="nav-wrapper #efebe9 brown lighten-5">
                <ul className="pagination">
                    <li className={`waves-effect ${currentPage === 1 ? 'disabled' : ''}`}>
                        <a onClick={goToPreviousPage} href="#!">
                            <i className="material-icons" >
                                keyboard_arrow_left
                            </i>
                        </a>
                    </li>
                    {pageNumbers.map((number) => (
                        <li
                            key={number}
                            className={`page-item ${
                                currentPage === number ? 'active #d7ccc8 brown lighten-4\n' : ''
                            }`}
                        >
                            <a
                                onClick={() => {
                                    setCurrentPage(number);
                                    paginate(number);
                                }}
                                href="#!"
                                className={`page-link ${
                                    currentPage === number ? '#d7ccc8 brown lighten-4' : ''
                                }`}
                            >
                                {number}
                            </a>
                        </li>
                    ))}
                    <li className={`waves-effect ${currentPage === 37 ? 'disabled' : ''}`}>
                        <a onClick={goToNextPage} href="#!">
                            <i className="material-icons" style={{ verticalAlign: 'middle' }}>
                                keyboard_arrow_right
                            </i>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>



    );
};

export default Pagination;
