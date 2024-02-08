k; some z3 options
(set-option :print-success false)
(set-info :smt-lib-version 2.0)
(set-option :smt.MBQI false)
(set-option :smt.QI.EAGER_THRESHOLD 100)
(set-option :smt.refine_inj_axioms false)
(set-option :trace true) 
(set-option :trace_file_name cg_sort.log)

(declare-sort Number)
(declare-sort Bool)
(declare-const i Number)
(declare-fun add_one (Number) Number)
(declare-fun f (Number) Number)
(declare-fun g (Number Number) Bool)

(assert (forall ((x Number)) (!(= (f x) (f (add_one x))) :pattern ((f x)) :qid loop)))
(assert (forall ((x Number)) (!(g (f i) (add_one x)) :pattern ((g (f x) x)) :qid loop)))

(assert (g (f i) i))
(check-sat)
