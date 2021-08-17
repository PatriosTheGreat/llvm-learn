#ifndef SIMPLE_LOG_H
#define SIMPLE_LOG_H
#include <iostream>
#include <string>
#ifdef SLG_ENABLE_DEBUG
inline void print_debug(const std::string &M) {
  std::cout << "[DEBUG] " << M << std::endl;
}
#endif
#ifdef SLG_ENABLE_ERROR
inline void print_error(const std::string &M) {
  std::cout << "[ERROR] " << M << std::endl;
}
#endif
#ifdef SLG_ENABLE_INFO
inline void print_info(const std::string &M) {
  std::cout << "[INFO] " << M << std::endl;
}
#endif
#endif