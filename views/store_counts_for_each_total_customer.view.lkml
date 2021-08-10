view: store_counts_for_each_total_customer {
  sql_table_name: `schwans-rfp.schwans_rfp_final.store_counts_for_each_total_customer`
    ;;

  dimension: buying_group {
    type: string
    sql: ${TABLE}.Buying_Group ;;
  }

  measure: buying_groups {
    type: count_distinct
    sql: ${buying_group} ;;
  }

  dimension: buying_group_id {
    type: number
    sql: ${TABLE}.Buying_Group_ID ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Creation_Date ;;
  }

  dimension: current_store_count_in {
    hidden: yes
    type: number
    sql: ${TABLE}.Current_Store_count ;;
  }

  measure: current_store_count_sum {
    type: sum
    sql: ${current_store_count_in} ;;
  }

  dimension: new_store_count_in {
    hidden: yes
    type: number
    sql: ${TABLE}.New_Store_Count ;;
  }

  measure: new_store_count_sum {
    type: sum
    sql: ${new_store_count_in} ;;
  }

  dimension: planning_customer_id {
    type: number
    sql: ${TABLE}.Planning_Customer_ID ;;
  }

  dimension: sku {
    type: number
    sql: ${TABLE}.SKU ;;
  }

  dimension: total_customer {
    type: string
    sql: ${TABLE}.Total_customer ;;
  }

  measure: total_customers {
    type: count_distinct
    sql: ${total_customer} ;;
  }

  dimension: user_creator {
    type: string
    sql: ${TABLE}.User_Creator ;;
  }

  dimension: wf_status {
    type: string
    sql: ${TABLE}.WF_Status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
