
import os, sys
from AST_Creator import TreeNode

def generate_dot(ast_list, filename="ast_output.dot"):
    node_counter = 0
    node_lines = []
    edge_lines = []

    def add_node(node, parent_id=None):
        nonlocal node_counter
        node_id = f"node{node_counter}"
        label = f"{node.type}"
        if node.value is not None:
            label += f"\\n{node.value}"
        node_lines.append(f'{node_id} [label="{label}"]')
        if parent_id:
            edge_lines.append(f'{parent_id} -> {node_id}')
        node_counter += 1

        for child in node.children:
            if isinstance(child, TreeNode):
                add_node(child, node_id)
            elif isinstance(child, tuple):
                label, subnode = child
                if isinstance(subnode, TreeNode):
                    add_node(subnode, node_id)
            else:
                leaf_id = f"node{node_counter}"
                node_lines.append(f'{leaf_id} [label="{child}"]')
                edge_lines.append(f'{node_id} -> {leaf_id}')
                node_counter += 1

    for root in ast_list:
        add_node(root)

    dot_content = "digraph AST {\n" + "\n".join(node_lines + edge_lines) + "\n}"

    with open(filename, "w", encoding="utf-8") as f:
        f.write(dot_content)

