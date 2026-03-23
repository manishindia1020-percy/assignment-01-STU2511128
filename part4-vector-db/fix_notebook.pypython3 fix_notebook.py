import nbformat

nb = nbformat.read("embeddings_demo.ipynb", as_version=4)

# Remove notebook-level widgets
if "widgets" in nb.metadata:
    del nb.metadata["widgets"]

# Remove cell-level widgets
for cell in nb.cells:
    if "metadata" in cell and "widgets" in cell["metadata"]:
        del cell["metadata"]["widgets"]

nbformat.write(nb, "embeddings_demo.ipynb")

print("Notebook cleaned successfully")

