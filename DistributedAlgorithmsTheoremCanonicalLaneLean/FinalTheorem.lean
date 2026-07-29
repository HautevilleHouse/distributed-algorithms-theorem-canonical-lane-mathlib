import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace DistributedAlgorithmsTheoremCanonicalLaneLean

def ConstrainedDistributedAlgorithmsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_distributed_algorithms_endgame (A : AdmissibleClass) : ConstrainedDistributedAlgorithmsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DistributedAlgorithmsTheoremCanonicalLaneLean
end HautevilleHouse
