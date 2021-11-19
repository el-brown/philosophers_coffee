import React from 'react';

const EditPhilo = (props) => {
  
  const { name, quote } = props.philo

  return (
    <div>
      <h1>Edit One Philosopher- Form</h1>
        <p>
          <a href="/">back</a>
        </p>
      <p>name: {name}</p>
      <p>quote: {quote}</p>
    </div>
  )
}

export default EditPhilo