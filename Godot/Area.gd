extends Area


# Load the scene that contains the shape
# Load the mesh scene
var mesh_scene = load("res://Models/Dodecahedron.fbx")

# Create a new Mesh resource and set its properties to match the mesh in the scene
var mesh = Mesh.new()
mesh.add_surface_from_mesh(mesh_scene.mesh)

# Create a new MeshInstance node and assign the Mesh resource to its mesh property
var mesh_instance = MeshInstance.new()
mesh_instance.mesh = mesh

# Create a new Area node and assign the MeshInstance to its mesh property
var area = Area.new()
area.mesh = mesh_instance

# Add the Area node to the scene
add_child(area)


