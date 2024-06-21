import { useState } from "react";
import Sidenav from "./components/Sidenav";
import Main from "./components/Main";
import Work from "./components/Work";
import Projects from "./components/Projects";
import Education from "./components/Education";
import Certifications from "./components/Certifications";
import Contact from "./components/Contact";

function App() {
  return (
    <div>
      <Sidenav />
      <Main />
      <Education />
      <Work />
      <Projects />
      <Certifications />
      <Contact />
    </div>
  );
}

export default App;
