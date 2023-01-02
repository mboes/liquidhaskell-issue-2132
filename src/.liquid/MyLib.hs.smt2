(set-option :auto-config false)
(set-option :model true)
(set-option :model.partial false)

(set-option :smt.mbqi false)

(define-sort Str () Int)
(declare-fun strLen (Str) Int)
(declare-fun subString (Str Int Int) Str)
(declare-fun concatString (Str Str) Str)
(define-sort Elt () Int)
(define-sort LSet () (Array Elt Bool))
(define-fun smt_set_emp () LSet ((as const LSet) false))
(define-fun smt_set_sng ((x Elt)) LSet (store ((as const LSet) false) x true))
(define-fun smt_set_mem ((x Elt) (s LSet)) Bool (select s x))
(define-fun smt_set_add ((s LSet) (x Elt)) LSet (store s x true))
(define-fun smt_set_cup ((s1 LSet) (s2 LSet)) LSet ((_ map or) s1 s2))
(define-fun smt_set_cap ((s1 LSet) (s2 LSet)) LSet ((_ map and) s1 s2))
(define-fun smt_set_com ((s LSet)) LSet ((_ map not) s))
(define-fun smt_set_dif ((s1 LSet) (s2 LSet)) LSet (smt_set_cap s1 (smt_set_com s2)))
(define-fun smt_set_sub ((s1 LSet) (s2 LSet)) Bool (= smt_set_emp (smt_set_dif s1 s2)))
(define-sort Map () (Array Elt Elt))
(define-fun smt_map_sel ((m Map) (k Elt)) Elt (select m k))
(define-fun smt_map_sto ((m Map) (k Elt) (v Elt)) Map (store m k v))
(define-fun smt_map_cup ((m1 Map) (m2 Map)) Map ((_ map (+ (Elt Elt) Elt)) m1 m2))
(define-fun smt_map_def ((v Elt)) Map ((as const (Map)) v))
(define-fun bool_to_int ((b Bool)) Int (ite b 1 0))
(define-fun Z3_OP_MUL ((x Int) (y Int)) Int (* x y))
(define-fun Z3_OP_DIV ((x Int) (y Int)) Int (div x y))
(declare-fun papp5 () Int)
(declare-fun cast_as_int () Int)
(declare-fun GHC.Types.C$35$ () Int)
(declare-fun GHC.Types.LT () Int)
(declare-fun GHC.Types.False () Int)
(declare-fun head () Int)
(declare-fun papp2 () Int)
(declare-fun lit$36$MyLib () Str)
(declare-fun GHC.Stack.Types.EmptyCallStack () Int)
(declare-fun GHC.Integer.Type.$36$WJp$35$ () Int)
(declare-fun papp7 () Int)
(declare-fun GHC.Real.$58$$37$ () Int)
(declare-fun GHC.Types.$91$$93$ () Int)
(declare-fun Data.Either.Left () Int)
(declare-fun Data.Either.Right () Int)
(declare-fun x_Tuple22 () Int)
(declare-fun MyLib.someFunc () Int)
(declare-fun GHC.Real.$36$W$58$$37$ () Int)
(declare-fun GHC.Types.TrNameS () Int)
(declare-fun GHC.Stack.Types.PushCallStack () Int)
(declare-fun x_Tuple31 () Int)
(declare-fun GHC.IO.Exception.IOError () Int)
(declare-fun tail () Int)
(declare-fun papp1 () Int)
(declare-fun GHC.Stack.Types.FreezeCallStack () Int)
(declare-fun GHC.Types.EQ () Int)
(declare-fun GHC.Maybe.Nothing () Int)
(declare-fun GHC.Maybe.Just () Int)
(declare-fun x_Tuple21 () Int)
(declare-fun x_Tuple33 () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803596$35$$35$d2Be () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803592$35$$35$d2Ba () Int)
(declare-fun papp3 () Int)
(declare-fun GHC.Types.$58$ () Int)
(declare-fun GHC.Tuple.$40$$44$$44$$41$ () Int)
(declare-fun papp4 () Int)
(declare-fun GHC.Types.I$35$ () Int)
(declare-fun GHC.CString.unpackCString$35$ () Int)
(declare-fun GHC.Types.Module () Int)
(declare-fun GHC.Tuple.$40$$41$ () Int)
(declare-fun GHC.Integer.Type.$36$WJn$35$ () Int)
(declare-fun GHC.Integer.Type.Jn$35$ () Int)
(declare-fun lq_tmp$36$x$35$$35$68 () Int)
(declare-fun GHC.Tuple.$40$$44$$41$ () Int)
(declare-fun GHC.Types.True () Int)
(declare-fun GHC.Integer.Type.S$35$ () Int)
(declare-fun GHC.Types.GT () Int)
(declare-fun GHC.Classes.C$58$IP () Int)
(declare-fun lit$36$hsc$45$0.1.0.0$45$FVBeefh98Si9dUkacXcyUl () Str)
(declare-fun papp6 () Int)
(declare-fun lit$36$someFunc () Str)
(declare-fun GHC.Types.TrNameD () Int)
(declare-fun GHC.Integer.Type.Jp$35$ () Int)
(declare-fun GHC.Enum.C$58$Bounded () Int)
(declare-fun System.IO.putStrLn () Int)
(declare-fun cast_as () Int)
(declare-fun lq_anf$36$$35$$35$7205759403792803594$35$$35$d2Bc () Int)
(declare-fun x_Tuple32 () Int)
(declare-fun apply$35$$35$13 (Int (_ BitVec 32)) Bool)
(declare-fun apply$35$$35$6 (Int Bool) Str)
(declare-fun apply$35$$35$0 (Int Int) Int)
(declare-fun apply$35$$35$8 (Int Str) Int)
(declare-fun apply$35$$35$7 (Int Bool) (_ BitVec 32))
(declare-fun apply$35$$35$10 (Int Str) Str)
(declare-fun apply$35$$35$12 (Int (_ BitVec 32)) Int)
(declare-fun apply$35$$35$4 (Int Bool) Int)
(declare-fun apply$35$$35$9 (Int Str) Bool)
(declare-fun apply$35$$35$11 (Int Str) (_ BitVec 32))
(declare-fun apply$35$$35$15 (Int (_ BitVec 32)) (_ BitVec 32))
(declare-fun apply$35$$35$1 (Int Int) Bool)
(declare-fun apply$35$$35$14 (Int (_ BitVec 32)) Str)
(declare-fun apply$35$$35$5 (Int Bool) Bool)
(declare-fun apply$35$$35$2 (Int Int) Str)
(declare-fun apply$35$$35$3 (Int Int) (_ BitVec 32))
(declare-fun coerce$35$$35$13 ((_ BitVec 32)) Bool)
(declare-fun coerce$35$$35$6 (Bool) Str)
(declare-fun coerce$35$$35$0 (Int) Int)
(declare-fun coerce$35$$35$8 (Str) Int)
(declare-fun coerce$35$$35$7 (Bool) (_ BitVec 32))
(declare-fun coerce$35$$35$10 (Str) Str)
(declare-fun coerce$35$$35$12 ((_ BitVec 32)) Int)
(declare-fun coerce$35$$35$4 (Bool) Int)
(declare-fun coerce$35$$35$9 (Str) Bool)
(declare-fun coerce$35$$35$11 (Str) (_ BitVec 32))
(declare-fun coerce$35$$35$15 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun coerce$35$$35$1 (Int) Bool)
(declare-fun coerce$35$$35$14 ((_ BitVec 32)) Str)
(declare-fun coerce$35$$35$5 (Bool) Bool)
(declare-fun coerce$35$$35$2 (Int) Str)
(declare-fun coerce$35$$35$3 (Int) (_ BitVec 32))
(declare-fun smt_lambda$35$$35$13 ((_ BitVec 32) Bool) Int)
(declare-fun smt_lambda$35$$35$6 (Bool Str) Int)
(declare-fun smt_lambda$35$$35$0 (Int Int) Int)
(declare-fun smt_lambda$35$$35$8 (Str Int) Int)
(declare-fun smt_lambda$35$$35$7 (Bool (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$10 (Str Str) Int)
(declare-fun smt_lambda$35$$35$12 ((_ BitVec 32) Int) Int)
(declare-fun smt_lambda$35$$35$4 (Bool Int) Int)
(declare-fun smt_lambda$35$$35$9 (Str Bool) Int)
(declare-fun smt_lambda$35$$35$11 (Str (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$15 ((_ BitVec 32) (_ BitVec 32)) Int)
(declare-fun smt_lambda$35$$35$1 (Int Bool) Int)
(declare-fun smt_lambda$35$$35$14 ((_ BitVec 32) Str) Int)
(declare-fun smt_lambda$35$$35$5 (Bool Bool) Int)
(declare-fun smt_lambda$35$$35$2 (Int Str) Int)
(declare-fun smt_lambda$35$$35$3 (Int (_ BitVec 32)) Int)
(declare-fun lam_arg$35$$35$1$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$2$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$3$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$4$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$5$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$6$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$7$35$$35$0 () Int)
(declare-fun lam_arg$35$$35$1$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$2$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$3$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$4$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$5$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$6$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$7$35$$35$8 () Str)
(declare-fun lam_arg$35$$35$1$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$2$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$3$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$4$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$5$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$6$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$7$35$$35$12 () (_ BitVec 32))
(declare-fun lam_arg$35$$35$1$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$2$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$3$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$4$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$5$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$6$35$$35$4 () Bool)
(declare-fun lam_arg$35$$35$7$35$$35$4 () Bool)

(assert (distinct lit$36$someFunc lit$36$hsc$45$0.1.0.0$45$FVBeefh98Si9dUkacXcyUl lit$36$MyLib))

(assert (distinct GHC.Types.True GHC.Types.False))
(assert (distinct GHC.Types.GT GHC.Types.EQ GHC.Types.LT))
(assert (= (strLen lit$36$MyLib) 5))
(assert (= (strLen lit$36$hsc$45$0.1.0.0$45$FVBeefh98Si9dUkacXcyUl) 34))
(assert (= (strLen lit$36$someFunc) 8))
(push 1)
(push 1)
(pop 1)
(pop 1)
(exit)
