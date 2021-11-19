
import React from 'react';

const Philos = (props) => {

  const { philos } = props
  // console.log(philos)

  return (
    <div>
      <h1>Our Greek Philosophers</h1>
        <p>
          <a href="http://localhost:3000/philos/new">Add Philosopher</a>
        </p>

        {philos.map((p) => (
          <div>{p.name}
            <br />
            <a href={`http://localhost:3000/philos/${p.id}`}>show</a>
            <br />
            <a href={`http://localhost:3000/philos/${p.id}/edit`}>edit</a>
            <br />
            <a href={`http://localhost:3000/philos/${p.id}`} data-method="delete"> delete </a>

          <hr />

        </div>
        ))}
    </div>
  )
}

export default Philos



// import React from 'react';

// const Philos = (props) => {
//   return (
  
//   )
// }

// export default Philos


// const { philos } = props
// // console.log(philos)

// return (
//   <div>
//     <h1>Our Greek Philosophers</h1>
//       {philos.map((p) => (
//         <div>{p.name}</div>
//       ))}
//   </div>
// )