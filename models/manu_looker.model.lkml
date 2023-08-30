connection: "mc_sql_looker"

# include all the views
# include: "/views/**/*.view.lkml"
include: "/views/dept.view.lkml"
include: "/views/emp_sal.view.lkml"
include: "/views/expence.view.lkml"

datagroup: manu_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: manu_looker_default_datagroup

explore: dept {
    join: emp_sal {
      type: left_outer
      relationship: many_to_one
      sql_on: ${emp_sal.id} = ${dept.emp_id} ;;
    }

    join: expence {
      type: left_outer
      relationship: many_to_one
      sql_on: ${expence.expid} = ${dept.emp_id} ;;
    }

}
