import React from 'react';
import { useState } from 'react';
import '../components/Card.css'

const ShowHide = () => {
	const [Show, setShow] = useState(true);
	const handleClick = event => {
		setShow(!Show);
	};

	return (
		<div className='hocks'>
			<button className='showHide' onClick={handleClick}>{Show ? 'Ocultar' : 'Mostrar' }</button>
			{Show && <h2>Escóndeme !!!</h2>}
		</div>
	);
};

export default ShowHide;
