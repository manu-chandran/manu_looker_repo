view: expence {
  sql_table_name: mc_orders.expence ;;

  dimension: empcontri {
    type: number
    sql: ${TABLE}.empcontri ;;
  }
  dimension: empexpences {
    type: string
    sql: ${TABLE}.empexpences ;;
  }
  dimension: expid {
    type: number
    value_format_name: id
    sql: ${TABLE}.expid ;;
  }
  measure: count {
    type: count
  }
}
