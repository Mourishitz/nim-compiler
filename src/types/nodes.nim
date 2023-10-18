type
  NodeLocation = object
    `start`: int
    `end`: int
    `filename`: string

type
  MyASTNode = ref object
    `kind`: string
    `value`: int
    `left`, `right`: MyASTNode
    `location`: NodeLocation
