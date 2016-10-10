# Smoketest for Docker images
# Execute few commands to see if cameo images function somehow

from aiozmq import rpc  # included because on Alpine Linux it leads to segfault
from cameo import models, load_model
model = load_model('iJO1366')  # does not rely on connection to BIGG database
model.solve()
print('Test OK')
