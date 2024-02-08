(set-option :print-success false)
(set-info :smt-lib-version 2.0)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :smt.refine_inj_axioms false)
(set-option :trace true) 
(set-option :trace_file_name cg_sort.log)

(declare-sort Number)

(declare-const i Number)
(declare-fun add_one (Number) Number)
(declare-fun f (Number) Number)
(declare-fun sum (Number Number) Number)

(assert (forall ((x Number)) (!(= (f x) (f (add_one x))) :pattern ((f x)) :qid loop)))
(assert (forall ((x Number)) (!(= (sum (f i) (add_one x)) (add_one x)) :pattern ((sum (f x) x)) :qid loop)))

(assert (= (sum (f i) i) i))
(check-sat)

