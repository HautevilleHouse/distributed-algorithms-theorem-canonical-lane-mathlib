import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decides A.lane.bridgeAlgorithm A.lane.consensusLanguage

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.bridgeDecidesConsensus

end DistributedAlgorithmsTheoremCanonicalLaneLean
end HautevilleHouse
