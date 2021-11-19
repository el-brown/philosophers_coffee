import React from 'react';

const Coffees = (props) => {

  const { coffees, philo } = props
  
  return (
    <div>
      <h1>All the Coffees of this guy</h1>
        <p>
          <a href={`/philos/${philo.id}`}>back</a>
        </p>
        <p>
          <a href={`http://localhost:3000/philos/${philo.id}/coffees/new`}>Add Coffee</a>
        </p>

      {coffees.map((c)=> (
        <div>
        <h1>{c.name}</h1>
        <p>{c.notes}</p>
        <br />
            <a href={`http://localhost:3000/philos/${philo.id}/coffees/${c.id}`}>show</a>
            <br />
            <a href={`http://localhost:3000/philos/${philo.id}/coffees/${c.id}/edit`}>edit</a>
            <br />
            <a href={`http://localhost:3000/philos/${philo.id}/coffees/${c.id}`} data-method="delete"> delete </a>

          <hr />
        </div>
      ))}
    </div>
  )
}

export default Coffees