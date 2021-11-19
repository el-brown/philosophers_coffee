import React from 'react';

const Coffee = (props) => {

  const { id, name, notes } = props.coffee
  
  return (
    <div>
      <h1>One Coffee</h1>
        <p>
          <a href="/">Home</a>
        </p>
      <h2>{id}. {name}</h2>
      <p>{notes}</p>
    </div>
  )
}

export default Coffee