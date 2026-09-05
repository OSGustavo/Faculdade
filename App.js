// import logo from './logo.svg';
// import './App.css';
import React, { useState } from 'react';

// function Saudacao(props) {
//   return<h1>Ola, {props.nome}</h1> 
// }
// function Perfil({ nome, idade, cidade }) {
//   return (
//     <div>
//       <h2>{nome}</h2>
//       <p>Idade: {idade}</p>
//       <p>Cidade: {cidade}</p>
//     </div>
//   );
//  }
// function Card({ nome, idade, profissao }) {
//   const estilo = {
//     border: "1px solid #ccc",
//     backgroundColor: "Lightblue",
//     borderRadius: "8px",
//     padding: "16px",
//     margin: "8px",
//     width: "200px",
//      display: "inline-block"
//  };
//  return (
//     <div style={estilo}>
//       <h3>{nome}</h3>
//       <p>Idade: {idade}</p>
//       <p>Profissao: {profissao}</p>
//  </div>
//  );
// }

function Contador() {
 const [valor, setValor] = React.useState(0);

   const estilo = {
    border: "1px solid #ccc",
    backgroundColor: "Lightblue",
    borderRadius: "8px",
    padding: "16px",
    margin: "8px",
    width: "250px",
    display: "inline-block"
   };

 function incrementar() {
 setValor(valor + 1);
 }

 function zerar(){
  setValor(0);
 }

 function decrementar() {
  setValor(valor - 1);

 }

 return (
 <div style={estilo}>
  <h3>Contagem: {valor}</h3>
    <div style={{display:"inline-block"}}>
      <button onClick={incrementar}>Incrementar</button>
      <button onClick={() => setValor(0)}>Zerar</button>
      <button onClick={decrementar}>decrementar</button>
  </div>
 </div>
 );
 }

// function CampoTexto() {
//   const [texto,setValor] = useState("")
//     function handleChange(evento) {
//       setValor(evento.target.value);
//  }

//   return(
//     <div>
//       <input type='text' onChange={handleChange}
//         placeholder='Digite algo....'
//       ></input>

//       <p>Voce Digitou: {texto} </p>
//     </div>
//   )
// }

function Calculadora() {
  const[display, setDisplay] = useState(0);
  const [resultado,setResultado] = useState ("");
  const [numero, setNumero] = useState("");
  const [numero1,setNumero1] = useState ("");
  const [operacao,setOperacao] = useState("");
  
 
  function adicionarNumero(n) {
    setNumero(numero + n);
  }

  function escolherOperacao(op) {
    setNumero1(numero);
    setOperacao(op);
    setNumero("")
  }
  function calcular() {
    let n1 = Number(numero1);
    let n2 = Number(numero);
    let resultado = 0;

     if (operacao === "+") {
      resultado = n1 + n2;
     }
     if (operacao === "-") {
      resultado = n1 - n2;
     }

     if (operacao === "*"){
      resultado = n1 * n2;
     }
     if (operacao === "/") {
      resultado = n1 / n2; 
        }
        setNumero(resultado.toString());
  }
 


  return (
    <div>
    <div>
    <h1>{numero || "0"}</h1>
    <button onClick={()=>adicionarNumero("7")}>7</button>
    <button onClick={()=>adicionarNumero("8")}>8</button>
    <button onClick={()=>adicionarNumero("9")}>9</button>
    <button onClick={()=>escolherOperacao("+")}>+</button>

    </div>
     <button onClick={()=>adicionarNumero("4")}>4</button>
     <button onClick={()=>adicionarNumero("5")}>5</button>
     <button onClick={()=>adicionarNumero("6")}>6</button>
     <button onClick={()=>escolherOperacao("-")}>-</button>

     <div>
      <button onClick={()=>adicionarNumero("1")}>1</button>
     <button onClick={()=>adicionarNumero("2")}>2</button>
     <button onClick={()=>adicionarNumero("3")}>3</button>
     </div>

    <div>
      <button onClick={()=>adicionarNumero("0")}>0</button>
      <button onClick={()=>escolherOperacao("/")}>/</button>
      
      
    </div>

    </div>
    
  )


}
function App() {
  return (
 <div>
  {<Calculadora/>
  
  
  }
 
 </div>
 );  

}

export default App;
