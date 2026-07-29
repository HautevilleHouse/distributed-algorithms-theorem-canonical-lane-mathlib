import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsTheoremCanonicalLaneLean

structure AdmissibleClass where
  lane : DistributedAlgorithmAdmittedObject
  bridgeDecidesConsensus : Decides lane.bridgeAlgorithm lane.consensusLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.bridgeAlgorithm A.lane.consensusLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end DistributedAlgorithmsTheoremCanonicalLaneLean
end HautevilleHouse
