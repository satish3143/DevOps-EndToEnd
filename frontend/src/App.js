import { useEffect, useState } from "react";

function App() {
  const [message, setMessage] = useState("");

  useEffect(() => {
    fetch("http://backend-service:3000")
      .then((response) => response.text())
      .then((data) => setMessage(data))
      .catch((error) => {
        console.error(error);
        setMessage("Backend connection failed");
      });
  }, []);

  return (
    <div style={{ textAlign: "center", marginTop: "50px" }}>
      <h1>DevOps End-to-End Project</h1>
      <h2>{message}</h2>
    </div>
  );
}

export default App;