connection: "a_schwans_rfp"

# include all the views
include: "/views/**/*.view"

datagroup: schwans_rfp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: schwans_rfp_default_datagroup

explore: dcp_data_expanded {}
