import React from 'react';
import './Card.css';

const Card = ({
	title = 'Titulo de la Tarjeta',
	description = 'Descripción de la Tarjeta',
}) => {
	return (
		<div className='Card'>
			<h2>{title}</h2>
			<p>{description}</p>
		</div>
	);
};

export default Card;
