if(DEFINED NOLIFENX_ROOT)
    set(NOLIFENX_USER_INCLUDE_PATH ${NOLIFENX_ROOT}/nx)
    set(NOLIFENX_USER_LIB_PATH ${NOLIFENX_ROOT}/lib)
endif()

find_path(NOLIFENX_INCLUDE_DIR
NAMES
    nxfwd.hpp
PATHS
    /usr/include/nx
    /usr/local/include/nx
    ${NOLIFENX_USER_INCLUDE_PATH}
)

find_library(NOLIFENX_LIBRARY
NAMES
    NoLifeNx
PATHS
    /usr/lib
    /usr/local/lib
    ${NOLIFENX_USER_LIB_PATH}
)
