view: select_the_matching_iri_data_records {
  sql_table_name: `schwans-rfp.schwans_rfp_final.select_the_matching_iri_data_records`
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

  dimension: iri_customer_name {
    label: "IRI Customer Name"
    type: string
    sql: ${TABLE}.IRI_Customer_Name ;;
  }

  dimension: iri_product_name {
    label: "IRI Product Name"
    type: string
    sql: ${TABLE}.IRI_Product_Name ;;
  }

  measure: iri_records {
    label: "IRI Records"
    type: count_distinct
    sql: ${iri_customer_name} || ${iri_product_name}   ;;
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
    drill_fields: [iri_product_name, iri_customer_name]
  }
}
