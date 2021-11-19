import React from 'react';

const EditCoffee = (props) => {

  // {philo: @philo, coffee: @coffee}

  const { philo, coffee } = props

  return (
    <div>
      <h1>Edit One Coffee- Form</h1>
        <p>
          <a href="/">Home</a>
        </p>

      <form action={`/philos/${philo.id}/coffees/${coffee.id}`} method="post">
        <input type="hidden" name="_method" value="patch" />
        <p>Name</p>
        <input defaultValue={coffee.name} name="coffee[name]" />
        <p>Notes</p>
        <input defaultValue={coffee.notes} name="coffee[notes]" />
        <button>Add</button>
      </form>

    </div>
  )
}

export default EditCoffee