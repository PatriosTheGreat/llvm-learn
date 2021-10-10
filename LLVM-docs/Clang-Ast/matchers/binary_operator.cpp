#include <compare>

class HasSpaceship {
public:
   int x;
   bool operator==(const HasSpaceship&) const = default;
   std::strong_ordering operator<=>(const HasSpaceship&) const = default;
};

bool isLess(const HasSpaceship& a, const HasSpaceship& b) {
   return a < b;
}

/*
matcher:
binaryOperator(
  hasOperatorName("<"),
  hasRHS(hasDescendant(integerLiteral(equals(0))))
  )

Result:
1 match found.

   return a < b;
          ^~~~~

*/