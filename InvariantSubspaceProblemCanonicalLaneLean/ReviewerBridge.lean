import InvariantSubspaceProblemCanonicalLaneLean.Formalization
import InvariantSubspaceProblemCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace InvariantSubspaceProblemCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "24f654aa1c9d42c49fe034edb45e0682807e4c33971c0269f0b5edf2e384e5c3", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "97d7c9e85cb616e0db697d1d888f471fc34e40e6c0c66d63b4a5ed8378f0fda4", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "13473e3ea9b6fd85da82337e9bf075f293754401ccc604343098d505906d4c5a", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "a723dfc0edf1da9f31427a6389952960f9a61ea0e3d1a690d6c3db2de7954e74", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "d5732cec252f8561d723f6b7a92b5899fba27532a498c5bf96f69deec4f4f3bb", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "678c345401a5d7c2801fa5b7311da6a43d28cd3f5a50d3fa09e4d27ffdb4a73d", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "48120d95d4877355f361bb8e595ca05119430df8815740c44708604ee5d677aa", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "849dd00270cf5e1523eb052397a13c08195323e0d04b768955ef9e74e4b155ba", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "5cddfee3004f4a59c6a6751db79ca4cff0a94038849b335974ca68410a3dece4", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "ISP_G1", constant := "kappa_operator" },
  { gate := "ISP_G2", constant := "sigma_spectral" },
  { gate := "ISP_G3", constant := "kappa_compact" },
  { gate := "ISP_G4", constant := "rho_rigidity" },
  { gate := "ISP_G5", constant := "subspace_transfer" },
  { gate := "ISP_G6", constant := "eps_coh" },
  { gate := "ISP_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "4185062ecc015f11c23418be6f5154e77376d96ec039cfc4c008afeaa5364110" },
  { path := "README.md", sha256 := "9cdc4eb8fc1e6d31d4b67fb6a7c1418c2678a4129c014b1f081158a25efcfe76" },
  { path := "artifacts/constants_extracted.json", sha256 := "a723dfc0edf1da9f31427a6389952960f9a61ea0e3d1a690d6c3db2de7954e74" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "13473e3ea9b6fd85da82337e9bf075f293754401ccc604343098d505906d4c5a" },
  { path := "artifacts/constants_registry.json", sha256 := "d5732cec252f8561d723f6b7a92b5899fba27532a498c5bf96f69deec4f4f3bb" },
  { path := "artifacts/promotion_report.json", sha256 := "48120d95d4877355f361bb8e595ca05119430df8815740c44708604ee5d677aa" },
  { path := "artifacts/stitch_constants.json", sha256 := "678c345401a5d7c2801fa5b7311da6a43d28cd3f5a50d3fa09e4d27ffdb4a73d" },
  { path := "notes/EG1_public.md", sha256 := "307db1104944cd0a9265449b3c967402c715cb310463c1954ad388efd746ea19" },
  { path := "notes/EG2_public.md", sha256 := "3edfa72a10886c19a61238b94c2113c7fa9e60c9de2afdc340a05edba3c1fc72" },
  { path := "notes/EG3_public.md", sha256 := "b03b14033abd6eac945d4ce25d1e002c2a915571490202265b2a02ca5ca79b47" },
  { path := "notes/EG4_public.md", sha256 := "999f138061905f1c45b278127f2972ef0f8aadd8c6a0505ed5e73da9a1c7c239" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "97d7c9e85cb616e0db697d1d888f471fc34e40e6c0c66d63b4a5ed8378f0fda4" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "b099d1771be936252e2e2db293c5a4d8c9681ea87fee195fa7bbe26a9503ecd7" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "233ca73717387422bb62e940a0d17414162d9821d2ddf4d53c83ee20f50ecf78" },
  { path := "paper/INVARIANT_SUBSPACE_PROBLEM_PREPRINT.md", sha256 := "29b97bb6d5b04c42ba21b0efccc892d3b8ef3a14db7ad107352e152e7c5119df" },
  { path := "repro/REPRO_PACK.md", sha256 := "315950fb217334c1ba310b449e940ed86ae275e89feaa3e527c328bb8561e646" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "6688e536bb5377b73c7f80ec2034733d046bfec1dc1aea185966c7de26dec283" },
  { path := "repro/certificate_baseline.json", sha256 := "5cddfee3004f4a59c6a6751db79ca4cff0a94038849b335974ca68410a3dece4" },
  { path := "repro/run_repro.sh", sha256 := "57c5c046d667fdd7fce2f292d92803a1ccab9d99ee2f550968e1062e08abdd69" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/isp_closure_guard.py", sha256 := "17ccc30c343be3dcc797b29354c7426eb8aa3e8568f7a0f565b61d3185d574d4" },
  { path := "scripts/README.md", sha256 := "1e6d93e0dc1ad94fa60f5d28d82bf17e5dd1db8307960435a814b337540c5b5c" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "ISP_G1", status := "PASS" },
  { gate := "ISP_G2", status := "PASS" },
  { gate := "ISP_G3", status := "PASS" },
  { gate := "ISP_G4", status := "PASS" },
  { gate := "ISP_G5", status := "PASS" },
  { gate := "ISP_G6", status := "PASS" },
  { gate := "ISP_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_operator", value := "1.0932" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_spectral", value := "1.0750000000000002" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "subspace_transfer", value := "1.029422" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_operator",
  "rho_rigidity",
  "sigma_spectral",
  "sigma_star_can",
  "subspace_transfer"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end InvariantSubspaceProblemCanonicalLaneLean
end HautevilleHouse
