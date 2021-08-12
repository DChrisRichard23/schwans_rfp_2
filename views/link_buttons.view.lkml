view: link_buttons {
  derived_table: {
    sql: SELECT
          'Back to Contents Page' AS back_link
      ,   '01. Task 9 - Create Example Report' AS link_1
       ,  '02. Task 10 - Prompt For SKU #...' AS link_2
       ,  '03. Task 11 - Select the IRI Records for the current period' AS link_3
       ,  '04. Task 12 - Select the matching IRI Data records...' AS link_4
       ,  '05. Task 13 - Get the Share of MULO value for each Total Customer' AS link_5
       ,  '06. Task 14 - Find Matching DCP records...' AS link_6
       ,  '07. Task 15 - Select From the Pizza Goal Sheet...' AS link_7
       ,  '08. Task 16 - Get the Store Counts for each Total Customer...' AS link_8
       ,  '09. Task 17 - DCP Calculation on Store Counts...' AS link_9
       ,  '10. Looker Demo...' AS link_10
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: back_link {
    type: string
    sql: ${TABLE}.back_link ;;
    html: <a href="/dashboards-next/150">{{ value }}</a> ;;
  }

  dimension: link_1 {
    type: string
    sql: ${TABLE}.link_1 ;;
    html: <a href="/dashboards-next/147">{{ value }}</a> ;;
  }

  dimension: link_2 {
    type: string
    sql: ${TABLE}.link_2 ;;
    html: <a href="/dashboards-next/151">{{ value }}</a> ;;
  }

  dimension: link_3 {
    type: string
    sql: ${TABLE}.link_3 ;;
    html: <a href="/dashboards-next/152">{{ value }}</a> ;;
  }

  dimension: link_4 {
    type: string
    sql: ${TABLE}.link_4 ;;
    html: <a href="/dashboards-next/153">{{ value }}</a> ;;
  }

  dimension: link_5 {
    type: string
    sql: ${TABLE}.link_5 ;;
    html: <a href="/dashboards-next/154">{{ value }}</a> ;;
  }

  dimension: link_6 {
    type: string
    sql: ${TABLE}.link_6 ;;
    html: <a href="/dashboards-next/155">{{ value }}</a> ;;
  }

  dimension: link_7 {
    type: string
    sql: ${TABLE}.link_7 ;;
    html: <a href="/dashboards-next/156">{{ value }}</a> ;;
  }

  dimension: link_8 {
    type: string
    sql: ${TABLE}.link_8 ;;
    html: <a href="/dashboards-next/157">{{ value }}</a> ;;
  }

  dimension: link_9 {
    type: string
    sql: ${TABLE}.link_9 ;;
    html: <a href="/dashboards-next/158">{{ value }}</a> ;;
  }

  dimension: link_10 {
    type: string
    sql: ${TABLE}.link_10 ;;
    html: <a href="/dashboards-next/159">{{ value }}</a> ;;
  }

  set: detail {
    fields: [
      back_link,
      link_1,
      link_2,
      link_3,
      link_4,
      link_5,
      link_6,
      link_7,
      link_8,
      link_9
    ]
  }
}
