import React from 'react';

const NewCoffee = (props) => {

  const { philo } = props
  
  return (
    <div>
      <h1>Create New Coffee - Form</h1>
      <p>
        <a href="/">Home</a>
      </p>

      <form action={`/philos/${philo.id}/coffees`} method="post">
        <p>Name</p>
        <input name="coffee[name]" />
        <p>Notes</p>
        <input name="coffee[notes]" />
        <button>Add</button>
      </form>
    </div>
  )
}

export default NewCoffee