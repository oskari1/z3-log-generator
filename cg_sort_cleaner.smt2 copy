k; some z3 options
(set-option :print-success false)
(set-info :smt-lib-version 2.0)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :smt.refine_inj_axioms false)
(set-option :trace true) 
(set-option :trace_file_name cg_sort.log)

(declare-sort Number)

(declare-const z Number)
(declare-fun inc (Number) Number)
(declare-fun f (Number) Number)
(declare-fun sum (Number Number) Number)

(assert (forall ((x Number)) (!(= (f x) (f (inc x))) :pattern ((f x)) :qid loop)))
(assert (forall ((x Number)) (!(= (sum (f z) (inc x)) (inc (sum x x))) :pattern ((sum (f x) x)) :qid loop)))

(assert (= (sum (f z) z) z))
(check-sat)
