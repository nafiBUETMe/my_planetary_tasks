# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "prochesta_arm_motion: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iprochesta_arm_motion:/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(prochesta_arm_motion_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg" NAME_WE)
add_custom_target(_prochesta_arm_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prochesta_arm_motion" "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg" ""
)

get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv" NAME_WE)
add_custom_target(_prochesta_arm_motion_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "prochesta_arm_motion" "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Services
_generate_srv_cpp(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Module File
_generate_module_cpp(prochesta_arm_motion
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prochesta_arm_motion
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(prochesta_arm_motion_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(prochesta_arm_motion_generate_messages prochesta_arm_motion_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_cpp _prochesta_arm_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_cpp _prochesta_arm_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prochesta_arm_motion_gencpp)
add_dependencies(prochesta_arm_motion_gencpp prochesta_arm_motion_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prochesta_arm_motion_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Services
_generate_srv_eus(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Module File
_generate_module_eus(prochesta_arm_motion
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prochesta_arm_motion
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(prochesta_arm_motion_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(prochesta_arm_motion_generate_messages prochesta_arm_motion_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_eus _prochesta_arm_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_eus _prochesta_arm_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prochesta_arm_motion_geneus)
add_dependencies(prochesta_arm_motion_geneus prochesta_arm_motion_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prochesta_arm_motion_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Services
_generate_srv_lisp(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Module File
_generate_module_lisp(prochesta_arm_motion
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prochesta_arm_motion
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(prochesta_arm_motion_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(prochesta_arm_motion_generate_messages prochesta_arm_motion_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_lisp _prochesta_arm_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_lisp _prochesta_arm_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prochesta_arm_motion_genlisp)
add_dependencies(prochesta_arm_motion_genlisp prochesta_arm_motion_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prochesta_arm_motion_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Services
_generate_srv_nodejs(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Module File
_generate_module_nodejs(prochesta_arm_motion
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prochesta_arm_motion
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(prochesta_arm_motion_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(prochesta_arm_motion_generate_messages prochesta_arm_motion_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_nodejs _prochesta_arm_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_nodejs _prochesta_arm_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prochesta_arm_motion_gennodejs)
add_dependencies(prochesta_arm_motion_gennodejs prochesta_arm_motion_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prochesta_arm_motion_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Services
_generate_srv_py(prochesta_arm_motion
  "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prochesta_arm_motion
)

### Generating Module File
_generate_module_py(prochesta_arm_motion
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prochesta_arm_motion
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(prochesta_arm_motion_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(prochesta_arm_motion_generate_messages prochesta_arm_motion_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/msg/SixJoints.msg" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_py _prochesta_arm_motion_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vboxuser/gui_ws/src/prochesta_arm_motion/srv/JointSrv.srv" NAME_WE)
add_dependencies(prochesta_arm_motion_generate_messages_py _prochesta_arm_motion_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(prochesta_arm_motion_genpy)
add_dependencies(prochesta_arm_motion_genpy prochesta_arm_motion_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS prochesta_arm_motion_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prochesta_arm_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/prochesta_arm_motion
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(prochesta_arm_motion_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prochesta_arm_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/prochesta_arm_motion
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(prochesta_arm_motion_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prochesta_arm_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/prochesta_arm_motion
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(prochesta_arm_motion_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prochesta_arm_motion)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/prochesta_arm_motion
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(prochesta_arm_motion_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prochesta_arm_motion)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prochesta_arm_motion\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/prochesta_arm_motion
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(prochesta_arm_motion_generate_messages_py std_msgs_generate_messages_py)
endif()
