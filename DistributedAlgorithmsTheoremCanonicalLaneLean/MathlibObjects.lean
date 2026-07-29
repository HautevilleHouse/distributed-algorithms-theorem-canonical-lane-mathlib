import canonicalLaneMathlib.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace DistributedAlgorithmsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev NodeId := Nat
abbrev Message := String
abbrev ConsensusValue := Bool

structure DecisionProcedure where
  propose : NodeId → Message → Bool
  decide : Bool

structure ConsensusProblem where
  nodes : List NodeId
  values : List ConsensusValue
  faulty : Nat

structure BridgeAlgorithm where
  rounds : Nat
  messages : List Message
  decision : DecisionProcedure

structure DistributedAlgorithmAdmittedObject where
  problem : ConsensusProblem
  consensusLanguage : Language Message
  bridgeAlgorithm : BridgeAlgorithm

structure DistributedAlgorithmEndgameState where
  admittedObject : DistributedAlgorithmAdmittedObject

def Decides (M : DecisionProcedure) (L : Language Message) : Prop :=
  forall msg : Message, M.decide = true ∧ msg ∈ L

end DistributedAlgorithmsTheoremCanonicalLaneLean
end HautevilleHouse
