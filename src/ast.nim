include types/nodes

# Define a proc to evaluate AST nodes
proc evalASTNode(node: MyASTNode): int =
  case node.kind
  of "Literal":
    return node.value
  of "Add":
    return evalASTNode(node.left) + evalASTNode(node.right)
  else:
    raise newException(ValueError, "Unknown AST node kind: " & node.kind)

# Define a sample AST
let ast = MyASTNode(kind: "Add", value: 0, location: NodeLocation(start: 1, `end`: 2, filename: "name"))
ast.left = MyASTNode(kind: "Literal", value: 3, location: NodeLocation(start: 1, `end`: 2, filename: "name"))
ast.right = MyASTNode(kind: "Literal", value: 4, location: NodeLocation(start: 1, `end`: 2, filename: "name"))

# Evaluate the AST using the proc
let result = evalASTNode(ast)

echo "Result:", result
