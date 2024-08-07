#ifndef AYIN_HEADER_AY_PROJ_HPP_
#define AYIN_HEADER_AY_PROJ_HPP_

namespace inn
{
template <typename T>
T ayMax(T a, T b)
{
  return a < b ? b : a;
}
}
#endif
