view: dcp_calculations_on_store_counts {
  sql_table_name: `schwans-rfp.schwans_rfp_final.dcp_calculations_on_store_counts`
    ;;

  dimension: acv_weighted_distribution_in {
    hidden: yes
    type: number
    sql: ${TABLE}.ACV_Weighted_Distribution ;;
  }

  measure: acv_weighted_distribution  {
    type: average
    sql: ${acv_weighted_distribution_in} ;;
  }

  dimension: current_store_count_in {
    hidden: yes
    type: number
    sql: ${TABLE}.Current_Store_count ;;
  }

  measure: current_store_count  {
    type: average
    sql: ${current_store_count_in} ;;
  }

  dimension: new_store_count_in {
    hidden: yes
    type: number
    sql: ${TABLE}.New_Store_Count ;;
  }

  measure: new_store_count  {
    type: average
    sql: ${new_store_count_in} ;;
  }

  dimension: stores_calc_in {
    hidden: yes
    type: number
    sql: ${TABLE}.Stores_Calc ;;
  }

  measure: stores_calc  {
    type: average
    sql: ${stores_calc_in} ;;
  }

  dimension: total_customer {
    type: string
    sql: ${TABLE}.Total_Customer ;;
  }

  dimension: total_store_count_in {
    hidden: yes
    type: number
    sql: ${TABLE}.Total_Store_Count ;;
  }

  measure: total_store_count  {
    type: average
    sql: ${total_store_count_in} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
