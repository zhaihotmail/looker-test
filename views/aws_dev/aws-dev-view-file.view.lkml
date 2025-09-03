view: aws_cost {

  sql_table_name: aws_info.aws_cost ;;

# Define your dimensions and measures here, like this:
  dimension: line_item_product_code {
    description: "Product Code"
    type: string
    sql: ${TABLE}.line_item_product_code ;;
  }

  dimension: year {
    description: "Year"
    type: string
    sql: ${TABLE}.year ;;
  }
  dimension: month {
    description: "Month"
    type: string
    sql: ${TABLE}.month ;;
  }
  dimension: date {
    description: "Date"
    type: date
    sql: date(${TABLE}.line_item_usage_start_date) ;;
  }

  dimension: date_string {
    description: "Date as String"
    type: string
    sql: substr(${TABLE}.identity_time_interval,1,10) ;;
  }

  measure: total_unblended_cost {
    type: sum
    group_label: "Total Cost"
    label: "Total Unblended Cost"
    value_format_name: decimal_3
    sql: ${TABLE}.line_item_unblended_cost ;;
  }
}
