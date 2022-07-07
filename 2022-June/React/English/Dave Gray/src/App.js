import { useState } from 'react';
import './App.css';
import Input from './components/Input';
import Square from './components/Square';

function App() {
  const [colorValue, setColorValue] = useState('')
  const [hexValue, setHexValue] = useState('')
  const [isDarkText, setIsDarkText] = useState(true)
  return (
    <div className='App' >
      <Square
        colorValue={colorValue}
        hexValue={hexValue}
        isDarkText={isDarkText}
        />
      <Input
        colorValue={colorValue} setColorValue={setColorValue}
        hexValue={hexValue} setHexValue={setHexValue}
        isDarkText={isDarkText}
        setIsDarkText={setIsDarkText}
      />
      </div>
  );
}

export default App;