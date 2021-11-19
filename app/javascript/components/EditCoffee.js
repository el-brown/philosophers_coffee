import React from 'react';

const EditCoffee = (props) => {
  
  const { name, notes } = props.coffee

  return (
    <div>
      <h1>Edit One Coffee- Form</h1>
        <p>
          <a href="/">Home</a>
        </p>
      <p>name: {name}</p>
      <p>quote: {notes}</p>
    </div>
  )
}

export default EditCoffee