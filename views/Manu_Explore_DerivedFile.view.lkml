# If necessary, uncomment the line below to include explore_source.

# include: "manu_looker.model.lkml"

view: manu_explore_derivedfile{
  derived_table: {
    explore_source: dept {
      column: emp_name { field: emp_sal.emp_name }
      column: emp_id {}
      column: dept_name {}
      column: emp_sal { field: emp_sal.emp_sal }
    }
  }
  dimension: emp_name {
    description: "This is the employee name from emp_Sal Table"
  }
  dimension: emp_id {
    description: "This is the employee id from dept Table"
    type: number
  }
  dimension: dept_name {
    description: "This is the department name from dept Table"
  }
  dimension: emp_sal {
    description: "This is employee salary column from emp_Sal Table"
    type: number
  }
}
