import DistributedAlgorithmsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributedAlgorithmsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def daProjection : Projection DistributedAlgorithmsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem da_projection_idempotent (x : DistributedAlgorithmsEndgameState) :
    daProjection.toFun (daProjection.toFun x) = daProjection.toFun x := by
  exact daProjection.idempotent x

end DistributedAlgorithmsTheoremCanonicalLaneLean
end HautevilleHouse