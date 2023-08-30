view: emp_sal {
  sql_table_name: mc_orders.empSal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: emp_name {
    type: string
    sql: ${TABLE}.empName ;;
  }
  dimension: emp_sal {
    type: number
    sql: ${TABLE}.empSal ;;
  }
  measure: count {
    type: count
    drill_fields: [id, emp_name]
  }
}
