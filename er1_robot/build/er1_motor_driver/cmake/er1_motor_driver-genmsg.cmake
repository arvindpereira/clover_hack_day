# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "er1_motor_driver: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ier1_motor_driver:/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(er1_motor_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg/Motors.msg" NAME_WE)
add_custom_target(_er1_motor_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "er1_motor_driver" "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg/Motors.msg" ""
)

get_filename_component(_filename "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_er1_motor_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "er1_motor_driver" "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(er1_motor_driver
  "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg/Motors.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/er1_motor_driver
)

### Generating Services
_generate_srv_cpp(er1_motor_driver
  "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/er1_motor_driver
)

### Generating Module File
_generate_module_cpp(er1_motor_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/er1_motor_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(er1_motor_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(er1_motor_driver_generate_messages er1_motor_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg/Motors.msg" NAME_WE)
add_dependencies(er1_motor_driver_generate_messages_cpp _er1_motor_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(er1_motor_driver_generate_messages_cpp _er1_motor_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(er1_motor_driver_gencpp)
add_dependencies(er1_motor_driver_gencpp er1_motor_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS er1_motor_driver_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(er1_motor_driver
  "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg/Motors.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/er1_motor_driver
)

### Generating Services
_generate_srv_lisp(er1_motor_driver
  "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/er1_motor_driver
)

### Generating Module File
_generate_module_lisp(er1_motor_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/er1_motor_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(er1_motor_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(er1_motor_driver_generate_messages er1_motor_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg/Motors.msg" NAME_WE)
add_dependencies(er1_motor_driver_generate_messages_lisp _er1_motor_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(er1_motor_driver_generate_messages_lisp _er1_motor_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(er1_motor_driver_genlisp)
add_dependencies(er1_motor_driver_genlisp er1_motor_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS er1_motor_driver_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(er1_motor_driver
  "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg/Motors.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/er1_motor_driver
)

### Generating Services
_generate_srv_py(er1_motor_driver
  "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/er1_motor_driver
)

### Generating Module File
_generate_module_py(er1_motor_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/er1_motor_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(er1_motor_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(er1_motor_driver_generate_messages er1_motor_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/msg/Motors.msg" NAME_WE)
add_dependencies(er1_motor_driver_generate_messages_py _er1_motor_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/arvind/clover_hack_day/er1_robot/src/er1_motor_driver/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(er1_motor_driver_generate_messages_py _er1_motor_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(er1_motor_driver_genpy)
add_dependencies(er1_motor_driver_genpy er1_motor_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS er1_motor_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/er1_motor_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/er1_motor_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(er1_motor_driver_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/er1_motor_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/er1_motor_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(er1_motor_driver_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/er1_motor_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/er1_motor_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/er1_motor_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(er1_motor_driver_generate_messages_py std_msgs_generate_messages_py)
