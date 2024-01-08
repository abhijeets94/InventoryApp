//table number
//table occupancy
//food ordered time
//last item ordered
//list of item ordered

List<Map> tables = [
  {
    "table_no": 1,
    "table_occupancy": false,
    "table_last_order": "",
    "table_last_order_time": DateTime(2023, 10, 3, 14, 20),
    "table_list_of_orders":[],
  },
  {
    "table_no": 2,
    "table_occupancy": true,
    "table_last_order": "",
    "table_last_order_time": DateTime(2023, 10, 3, 14, 20),
    "table_list_of_orders":["food1"],
  },
  {
    "table_no": 3,
    "table_occupancy": true,
    "table_last_order": "",
    "table_last_order_time": DateTime(2023, 10, 3, 14, 20),
    "table_list_of_orders":["food1","food2","food3"],
  },
  {
    "table_no": 4,
    "table_occupancy": true,
    "table_last_order": "",
    "table_last_order_time": DateTime(2023, 10, 3, 14, 20),
    "table_list_of_orders":["food1","food2","food3","food4","food5", "food1","food2","food3","food4","food5"],
  },
  {
    "table_no": 5,
    "table_occupancy": true,
    "table_last_order": "food5",
    "table_last_order_time": DateTime(2023, 10, 3, 14, 20),
    "table_list_of_orders":["food1","food2","food3","food4","food5"],
  },
];
