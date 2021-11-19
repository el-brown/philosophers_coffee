import React from 'react';

const Philo = (props) => {

  const { id, name, quote } = props.philo
  
  return (
    <div>
      <h1>One Philosopher</h1>
        <p>
          <a href="/">back</a>
        </p>
      <h2>{id}. {name}</h2>
      <p>"{quote}"</p>
    </div>
  )
}

export default Philo