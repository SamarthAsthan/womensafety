import Nav from "./components/navigation/nav.js";
import Upcoming from "./components/upcoming.js";
import Home from "./components/home.js";
import { BrowserRouter, Routes, Route } from "react-router-dom";

function App() {
  return (
    <div>
    <BrowserRouter>
      <Routes>
        {/*root*/}
          <Route name='nav' path='/' element=<Nav content=<Home/> /> />
          <Route name='upcoming' path='/upcoming' element=<Nav content=<Upcoming/> /> />
      </Routes>
    </BrowserRouter>
      <Nav></Nav>
      </div>
  );
}

export default App;
