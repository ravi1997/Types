#ifndef DB35AF1E_4FC3_4DE1_B952_037DCAE08737
#define DB35AF1E_4FC3_4DE1_B952_037DCAE08737

#pragma once

#include <chrono>
#include <concepts>
#include <coroutine>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include <memory>
#include <mutex>
#include <optional>
#include <source_location>
#include <sstream>
#include <string>
#include <string_view>
#include <vector>
#include <variant>

#define assert(x, y, z)                                                        \
  if (!(x)) {                                                                  \
    details::assert_fail(#x, y, z);                                            \
  }

namespace std {
string to_string(vector<string> f);
string to_string(bool i);
bool stob(string);
vector<string> split(const string_view str, const string &delim);
string trim(const string str);
} // namespace std

namespace details {
template <typename t> concept toStringConvertable = requires(t a) {
  { std::to_string(a) }
  ->std::convertible_to<std::string>;
};
void assert_fail(
    std::string str, std::string msg,
    const std::source_location &loc = std::source_location::current());

} // namespace details

struct format_string {
  std::string str;
  std::source_location loc;

  format_string(const char *mystr, const std::source_location &myloc =
                                       std::source_location::current())
      : str(mystr), loc(myloc) {}

  format_string(std::string mystr, const std::source_location &myloc =
                                       std::source_location::current())
      : str(mystr), loc(myloc) {}

  format_string(const format_string &f) : str{f.str}, loc{f.loc} {}
};

std::string operator+(std::string, std::source_location);
std::string operator+(std::source_location, std::string);

#endif /* DB35AF1E_4FC3_4DE1_B952_037DCAE08737 */
