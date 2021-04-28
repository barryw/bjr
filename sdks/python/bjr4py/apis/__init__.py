
# flake8: noqa

# Import all APIs into this package.
# If you have many APIs here with many many models used in each API this may
# raise a `RecursionError`.
# In order to avoid this, import only the API that you directly need like:
#
#   from .api.authentication_api import AuthenticationApi
#
# or import this package, but before doing it, use:
#
#   import sys
#   sys.setrecursionlimit(n)

# Import APIs into API package:
from bjr4py.api.authentication_api import AuthenticationApi
from bjr4py.api.folders_api import FoldersApi
from bjr4py.api.job_server_api import JobServerApi
from bjr4py.api.jobs_api import JobsApi
from bjr4py.api.static_api import StaticApi
from bjr4py.api.users_api import UsersApi
