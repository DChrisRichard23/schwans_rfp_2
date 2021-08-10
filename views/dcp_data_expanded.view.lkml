view: dcp_data_expanded {
  sql_table_name: `schwans_rfp_final.dcp_data_expanded`
    ;;

  dimension: acv_weighted_distribution {
    hidden: yes
    type: number
    sql: ${TABLE}.ACV_Weighted_Distribution ;;
  }

  measure: acv_weighted_distribution_average {
    label: "ACV Weighted Distribution Average"
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
    label: "Buying Group ID"
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
    label: "Current SCV Average"
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
    label: "Goal SCV Average"
    type: average
    sql: ${goal_acv} ;;
    value_format: "###.0"
  }

  dimension: iri_customer_name {
    label: "IRI Customer Name"
    type: string
    sql: ${TABLE}.IRI_Customer_Name ;;
  }

  dimension: iri_name {
    label: "IRI Name"
    type: string
    sql: ${TABLE}.IRI_Name ;;
  }

  dimension: iri_product_name {
    label: "IRI Product Name"
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
    label: "Planning Customer ID"
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
    label: "Share of MULO Average"
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
    label: "SKU"
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

  measure: total_customers {
    type: count_distinct
    sql: ${total_customer} ;;
  }

  dimension: total_customer_bgp {
    label: "Total Customer BGP"
    type: string
    sql: ${TABLE}.Total_Customer_BGP ;;
  }

  dimension: upc {
    label: "UPC"
    type: number
    sql: ${TABLE}.UPC ;;
  }

  dimension: user_creator {
    type: string
    sql: ${TABLE}.User_Creator ;;
  }

  dimension: vp {
    label: "VP"
    type: string
    sql: ${TABLE}.VP ;;
  }

  dimension: wf_status {
    label: "WF Status"
    type: string
    sql: ${TABLE}.WF_Status ;;
  }

  measure: iri_records {
    label: "IRI Records"
    type: count_distinct
    sql: ${time}  || ${iri_customer_name} || ${iri_product_name}   ;;
  }

  measure: iri_customers {
    label: "IRI Customers"
    type: count_distinct
    sql: ${iri_customer_name}  ;;
  }

  measure: iri_product_names {
    label: "IRI Product Names"
    type: count_distinct
    sql: ${iri_product_name}  ;;
  }

  dimension: row_number {
    type: number
    primary_key: yes
    sql: ${TABLE}.row_number ;;
  }

  measure: count {
    type: count
    drill_fields: [iri_product_name, iri_customer_name, product_name, iri_name, product_short_name]
  }
}
