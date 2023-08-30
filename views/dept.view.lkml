view: dept {
  sql_table_name: mc_orders.dept ;;
  drill_fields: [dept_id]

  dimension: dept_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.deptID ;;
  }
  dimension: dept_name {
    type: string
    sql: ${TABLE}.deptName ;;
  }
  dimension: emp_id {
    type: number
    sql: ${TABLE}.empID ;;
  }
  measure: count {
    type: count
    drill_fields: [dept_id, dept_name]
  }
}
