import logo from './logo.svg';
import './App.css';
import {BrowserRouter , Routes, Route} from "react-router-dom";
import Layout from "./components/Layout.jsx"
import Home from './pages/Home';
import Abuot from './pages/About';
import Contact from './pages/Contact';
import Dienthoai from "./dienthoai/Dienthoai.jsx"

function App() {

  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path='/' element={<Layout />}>
            {/* <Route path='/about' element={<Abuot/>} />
            <Route path='/contact' element={<Contact/>} /> */}
          </Route>
          <Route path='/danhmucdienthoai' element={<Dienthoai />}>
              <Route index element={<Home/>} /> 
          </Route>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
