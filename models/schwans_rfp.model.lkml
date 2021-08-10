connection: "a_schwans_rfp"

# include all the views
include: "/views/**/*.view"

datagroup: schwans_rfp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: schwans_rfp_default_datagroup

explore: dcp_data_expanded {
  label: "Schwan's RFP"
  join: link_buttons {
    type: left_outer
    relationship: many_to_one
    sql_on: 1=1 ;;
  }
  join: creation_date {
    from: date_table
    view_label: "Creation Date"
    type: left_outer
    relationship: many_to_one
    sql_on: ${dcp_data_expanded.creation_date} = ${creation_date.date_date} ;;
  }
  join: on_shelf_date {
    from: date_table
    view_label: "On Shelf Date"
    type: left_outer
    relationship: many_to_one
    sql_on: ${dcp_data_expanded.on_shelf_date} = ${on_shelf_date.date_date} ;;
  }
  join: delivery_date {
    from: date_table
    view_label: "Delivery Date"
    type: left_outer
    relationship: many_to_one
    sql_on: ${dcp_data_expanded.delivery_date} = ${delivery_date.date_date} ;;
  }
  join: decision_date {
    from: date_table
    view_label: "Decision Date"
    type: left_outer
    relationship: many_to_one
    sql_on: ${dcp_data_expanded.decision_date} = ${decision_date.date_date} ;;
  }
  join: disco_date {
    from: date_table
    view_label: "Disco Date"
    type: left_outer
    relationship: many_to_one
    sql_on: ${dcp_data_expanded.disco_date} = ${disco_date.date_date} ;;
  }

}
