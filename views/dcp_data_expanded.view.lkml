view: dcp_data_expanded {
  sql_table_name: `schwans_rfp_final.dcp_data_expanded`
    ;;

  dimension: acv_weighted_distribution {
    hidden: yes
    type: number
    sql: ${TABLE}.ACV_Weighted_Distribution ;;
  }

  measure: acv_weighted_distribution_average {
    type: average
    sql: ${acv_weighted_distribution} ;;
    value_format: "#,###.00"
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: buying_group {
    type: string
    sql: ${TABLE}.Buying_Group ;;
  }

  dimension: buying_group_alias {
    type: string
    sql: ${TABLE}.Buying_Group_Alias ;;
  }

  dimension: buying_group_id {
    type: number
    sql: ${TABLE}.Buying_Group_ID ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.Class ;;
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

  dimension: current_acv {
    hidden: yes
    type: number
    sql: ${TABLE}.Current_ACV ;;
  }

  measure: current_acv_average {
    type: average
    sql: ${current_acv} ;;
    value_format: "###.0"
  }

  dimension: current_store_count {
    hidden: yes
    type: number
    sql: ${TABLE}.Current_Store_Count ;;
  }

  measure: current_store_count_average {
    type: average
    sql: ${current_store_count} ;;
    value_format: "###.0"
  }

  dimension_group: decision {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Decision_Date ;;
  }

  dimension_group: delivery {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Delivery_Date ;;
  }

  # dimension: delivery_date {
  #   type: string
  #   sql: ${TABLE}.Delivery_Date ;;
  # }

  dimension: director {
    type: string
    sql: ${TABLE}.Director ;;
  }

  dimension_group: disco {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Disco_Date ;;
  }

  dimension: goal_acv {
    hidden: yes
    type: number
    sql: ${TABLE}.Goal_ACV ;;
  }

  measure: goal_acv_average {
    type: average
    sql: ${goal_acv} ;;
    value_format: "###.0"
  }

  dimension: iri_customer_name {
    type: string
    sql: ${TABLE}.IRI_Customer_Name ;;
  }

  dimension: iri_name {
    type: string
    sql: ${TABLE}.IRI_Name ;;
  }

  dimension: iri_product_name {
    type: string
    sql: ${TABLE}.IRI_Product_Name ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}.Item_Description ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
  }

  dimension: new_store_count {
    hidden: yes
    type: number
    sql: ${TABLE}.New_Store_Count ;;
  }

  measure: new_store_count_average {
    type: average
    sql: ${new_store_count} ;;
    value_format: "###.0"
  }

  dimension_group: on_shelf {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.On_Shelf_Date ;;
  }

  dimension: planning_customer {
    type: string
    sql: ${TABLE}.Planning_Customer ;;
  }

  dimension: planning_customer_id {
    type: number
    sql: ${TABLE}.Planning_Customer_ID ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.Priority ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }

  dimension: product_short_name {
    type: string
    sql: ${TABLE}.Product_Short_Name ;;
  }

  dimension: promoted_group {
    type: string
    sql: ${TABLE}.Promoted_Group ;;
  }

  dimension: share_of_mulo {
    hidden: yes
    type: number
    sql: ${TABLE}.Share_of_MULO ;;
  }

  measure: share_of_mulo_average {
    type: average
    sql: ${share_of_mulo} ;;
    value_format: "###.0"
  }

  dimension: ship_to_count {
    type: number
    sql: ${TABLE}.Ship_to_Count ;;
  }

  measure: ship_to_count_average {
    type: average
    sql: ${ship_to_count} ;;
    value_format: "###.0"
  }

  dimension: sku_in {
    hidden: yes
    type: number
    sql: ${TABLE}.SKU ;;
  }

  dimension: sku {
    type: string
    sql: CAST(${sku_in} AS STRING) ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.Time ;;
  }

  dimension: total_customer {
    type: string
    sql: ${TABLE}.Total_Customer ;;
  }

  dimension: total_customer_bgp {
    type: string
    sql: ${TABLE}.Total_Customer_BGP ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.UPC ;;
  }

  dimension: user_creator {
    type: string
    sql: ${TABLE}.User_Creator ;;
  }

  dimension: vp {
    type: string
    sql: ${TABLE}.VP ;;
  }

  dimension: wf_status {
    type: string
    sql: ${TABLE}.WF_Status ;;
  }

  measure: count {
    type: count
    drill_fields: [iri_product_name, iri_customer_name, product_name, iri_name, product_short_name]
  }
}