"""
This is a simple input U_enrichment that gives the results module

"""


import sys
import os
from zx_openmc import config 

U_enrichment = config.U_enrichment
temperature = config.temperature
settings = config.settings
correspond_density = config.correspond_density

try:
    os.system("rm statepoint.*")
except Exception as e:
    print(e)

argv = sys.argv

try:
    if argv.index("-U"):
        U_enrichment = eval(argv[argv.index("-U")+1])
except Exception as e:
    print(e)

try:
    if argv.index("-t"):
        temperature = eval(argv[argv.index("-t")+1])
except Exception as e:
    print(e)
    
print('U_enrichment:{}\ntemperature:{}'.format(U_enrichment,temperature))

from zx_openmc import make_materials
from zx_openmc import make_surface
from zx_openmc import make_region
from zx_openmc import make_cell
import openmc

material_list = make_materials(
    U_enrichment=U_enrichment,
    temperature=temperature,
    correspond_density=correspond_density,
)
radius_list, Z_coordinate_list = make_surface()
region_list = make_region(
    radius_list=radius_list, Z_coordinate_list=Z_coordinate_list
)
cell_list = make_cell(region_list=region_list, material_list=material_list)
universe = openmc.Universe(cells=cell_list)
materials = openmc.Materials(material_list)
geometry = openmc.Geometry(universe)

materials.export_to_xml()
geometry.export_to_xml()
settings.export_to_xml()

openmc.run()

sp = openmc.StatePoint("statepoint.200.h5")
keff = sp.keff
sp.close()

os.system('echo "P(u):{} T:{} keff:{}" >> keff.txt'.format(U_enrichment, temperature, keff))