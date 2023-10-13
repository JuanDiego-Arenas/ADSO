import './App.css';
import Card from './components/Card';
import vehicles from './data/vehicles';
import ShowHide from './components/ShowHide';

function App() {
	const vehiclesList = vehicles.map(v => {
		return (
			<Card
				title={v.name}
				description={v.description}
			/>
		);
	});

	return (
		<div className='App'>
			<h1>Hello there!</h1>
      <ShowHide/>
			<div className='container'>{vehiclesList}</div>
		</div>
	);
}

export default App;
