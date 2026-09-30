import Mathlib.Data.Int.Interval
import Mathlib.Tactic.NormNum
import Lean.Elab.Tactic.Omega

/-!
Hint 32: a common lower bound is needed when passing from stabilization of
each digit to stabilization of every digit below an arbitrary cutoff.
This file proves that combinatorial step and the escaping-digit
counterexample. It does not construct Q_p or prove its distance formula.
-/

namespace KirillovGvishiani.StableDigits

def PointwiseStable (a : ℕ → ℤ → ℕ) : Prop :=
  ∀ i, ∃ N, ∀ n, N ≤ n → a n i = a N i

theorem finite_block (a : ℕ → ℤ → ℕ) (ha : PointwiseStable a)
    (s : Finset ℤ) :
    ∃ N, ∀ m n, N ≤ m → N ≤ n → ∀ i ∈ s, a m i = a n i := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    exact ⟨0, by simp⟩
  | @insert i s _ ih =>
    obtain ⟨Ni, hi⟩ := ha i
    obtain ⟨Ns, hs⟩ := ih
    refine ⟨max Ni Ns, ?_⟩
    intro m n hm hn j hj
    rcases Finset.mem_insert.mp hj with rfl | hj
    · exact (hi m (le_trans (le_max_left _ _) hm)).trans
        (hi n (le_trans (le_max_left _ _) hn)).symm
    · exact hs m n (le_trans (le_max_right _ _) hm)
        (le_trans (le_max_right _ _) hn) j hj

theorem lower_half_line (a : ℕ → ℤ → ℕ) (ha : PointwiseStable a)
    (K : ℤ) (hK : ∀ n i, i < K → a n i = 0) (B : ℤ) :
    ∃ N, ∀ m n, N ≤ m → N ≤ n → ∀ i, i ≤ B → a m i = a n i := by
  obtain ⟨N, hN⟩ := finite_block a ha (Finset.Icc K B)
  refine ⟨N, ?_⟩
  intro m n hm hn i hi
  by_cases h : i < K
  · rw [hK m i h, hK n i h]
  · exact hN m n hm hn i (Finset.mem_Icc.mpr ⟨by omega, hi⟩)

def escaping (n : ℕ) (i : ℤ) : ℕ := if i = -(n : ℤ) then 1 else 0

theorem escaping_pointwise : PointwiseStable escaping := by
  intro i
  refine ⟨i.natAbs + 1, ?_⟩
  intro n hn
  have hi : -(i.natAbs : ℤ) ≤ i := by
    have h := Int.le_natAbs (a := -i)
    rw [Int.natAbs_neg] at h
    omega
  have hn' : (i.natAbs : ℤ) + 1 ≤ (n : ℤ) := by exact_mod_cast hn
  have h1 : i ≠ -(n : ℤ) := by omega
  have h2 : i ≠ -((i.natAbs + 1 : ℕ) : ℤ) := by
    rw [Nat.cast_add, Nat.cast_one]
    omega
  rw [escaping, ite_eq_right h1, escaping, ite_eq_right h2]

theorem escaping_no_lower_bound :
    ¬ ∃ K : ℤ, ∀ n i, i < K → escaping n i = 0 := by
  rintro ⟨K, hK⟩
  have h : -((K.natAbs + 1 : ℕ) : ℤ) < K := by
    have hK' := Int.le_natAbs (a := -K)
    rw [Int.natAbs_neg] at hK'
    rw [Nat.cast_add, Nat.cast_one]
    omega
  have := hK (K.natAbs + 1) (-((K.natAbs + 1 : ℕ) : ℤ)) h
  simp [escaping] at this

end KirillovGvishiani.StableDigits

#print axioms KirillovGvishiani.StableDigits.finite_block
#print axioms KirillovGvishiani.StableDigits.lower_half_line
#print axioms KirillovGvishiani.StableDigits.escaping_pointwise
#print axioms KirillovGvishiani.StableDigits.escaping_no_lower_bound
