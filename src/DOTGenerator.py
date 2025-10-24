
import os, sys
from pathlib import Path
from AST_Creator import TreeNode

def generate_dot(ast_list, filename="output.dot"):
    try:
        node_counter = 0
        node_lines = []
        edge_lines = []

        def add_node(node):
            nonlocal node_counter
            node_id = f"node{node_counter}"
            label = f"{node.type}"
            if node.value is not None:
                label += f"\\n{node.value}"
            node_lines.append(f'{node_id} [label="{label}"]')
            node_counter += 1

            for child in node.children:
                if isinstance(child, TreeNode):
                    child_id = add_node(child)
                    if child.label:
                        edge_lines.append(f'{node_id} -> {child_id} [label="{child.label}"]')
                    else:
                        edge_lines.append(f'{node_id} -> {child_id}')
                else:
                    leaf_id = f"node{node_counter}"
                    node_lines.append(f'{leaf_id} [label="{child}"]')
                    edge_lines.append(f'{node_id} -> {leaf_id}')
                    node_counter += 1

            return node_id

        for root in ast_list:
            add_node(root)

        dot_content = "digraph AST {\n" + "\n".join(node_lines + edge_lines) + "\n}"

        root = Path(__file__).resolve().parent.parent
        output_dir = root / "doc" / "GraphOutputs"
        output_dir.mkdir(parents=True, exist_ok=True)
        filename = output_dir / filename
        with open(filename, "w", encoding="utf-8") as f:
            f.write(dot_content)
    except:
        print("Klein Error: Failed to generate DOT file from AST")
        sys.exit()