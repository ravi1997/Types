#ifndef __TYPES_CPP__
#define __TYPES_CPP__

#include <Types/types.hpp>

namespace details {
void assert_fail(std::string str, std::string msg,
                 const std::source_location &loc) {
  std::cerr << "Assertion : " << msg << std::endl
            << loc.file_name() << "(" << loc.line() << ":" << loc.column()
            << ") " << loc.function_name() << " : " << str << std::endl;
  std::abort();
}
} // namespace details
namespace std {
string to_string(vector<string> f) {
  string temp = "{";
  for (auto i : f)
    temp += i + "&";
  return temp;
}
string to_string(bool v){
	if(v)
		return "TRUE";
	else
		return "FALSE";
}
bool stob(string v) { return v == "TRUE"; }

vector<string> split(const string_view str, const string &delim) {
  vector<string> tokens;
  size_t prev = 0, pos = 0;
  do {
    pos = str.find(delim, prev);
    if (pos == string::npos)
      pos = str.length();
    string token{str.substr(prev, pos - prev)};
    if (!token.empty())
      tokens.push_back(token);
    prev = pos + delim.length();
  } while (pos < str.length() && prev < str.length());
  return tokens;
}

string trim(const string str) {
  size_t first = str.find_first_not_of(' ');
  if (string::npos == first) {
    return str;
  }
  size_t last = str.find_last_not_of(' ');
  return str.substr(first, (last - first + 1));
}
} // namespace std

std::string operator+(std::string s, std::source_location myloc) {
  return s + myloc.file_name() + "(" + std::to_string(myloc.line()) + ":" +
         std::to_string(myloc.column()) + ") " + myloc.function_name();
}
std::string operator+(std::source_location myloc, std::string s) {
  return std::string{myloc.file_name()} + "(" + std::to_string(myloc.line()) +
         ":" + std::to_string(myloc.column()) + ") " + myloc.function_name() +
         s;
}

#endif // __TYPES_CPP__
