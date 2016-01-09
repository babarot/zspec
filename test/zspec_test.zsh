# describe "assert"
#     it "equal"
#         assert eq     "foo" "foo"
#         assert equal  "1" "1"
#         assert equals 0 0
#     end
#
#     it "unequal"
#         assert ne       "foo" "bar"
#         assert unequal  "1" "0"
#         assert unequals 1 0
#     end
#
#     it "match"
#         assert match "f" "foo"
#         assert match cde abcdef 
#     end
#
#     it "unmatch"
#         assert unmatch "foo" "oof"
#         assert unmatch "1" "0"
#     end
# end
#
# describe "exist"
#     it "entry"
#         exist --entry "test/zspec_test.zsh"
#     end
#
#     it "file"
#         exist --file "test/zspec_test.zsh"
#     end
#
#     it "directory"
#         exist --dir "test"
#     end
# end
#
# describe "array"
#     arr_a=(a b c)
#     arr_b=(a b c)
#     arr_c=(c b a)
#
#     it "=="
#         array "==" --a $arr_a --b $arr_b
#     end
#
#     it "== 2"
#         array "==" --a $arr_a --b $arr_c
#     end
#
#     it "==="
#         array "===" --a $arr_a --b $arr_b
#     end
# end

describe "assert.helper"
    it "assert.true()"
        true
        assert.true $status
    end

    it "assert.false()"
        false
        assert.false $status
    end

    it "assert.compare()"
        assert.compare 1 '>' 0
    end

    it "assert.compare()"
        assert.compare 0 '<' 1
    end

    it "assert.compare()"
        assert.compare 0 '==' 0
    end

    it "assert.compare()"
        assert.compare 1 '!=' 0
    end

    it "assert.compare()"
        assert.compare 1 '>=' 0
    end

    it "assert.compare()"
        assert.compare 0 '<=' 0
    end

    it "assert.equals()"
        assert.equals abc abc
    end

    it "assert.equals()"
        assert.equals 123 123
    end

    it "assert.not_equals()"
        assert.not_equals abc xyz
    end

    it "assert.not_equals()"
        assert.not_equals 123 789
    end

    it "assert.match()"
        assert.match "every" "Hello everyone"
    end

    it "assert.not_match()"
        assert.not_match "Every" "Hello everyone"
    end

    it "assert.is_scalar()"
        local scalar; scalar="abc"
        assert.is_scalar scalar
    end

    it "assert.is_not_scalar()"
        local -i not_scalar; not_scalar=123
        assert.is_not_scalar not_scalar
    end

    it "assert.is_array()"
        local -a array; array=("a" "b" "c")
        assert.is_array array
    end

    it "assert.is_not_array()"
        local -i not_array; not_array=123
        assert.is_not_array not_array
    end

    it "assert.is_integer()"
        local -i integer; integer=123
        assert.is_integer integer
    end

    it "assert.is_not_integer()"
        local not_integer; not_integer="abc"
        assert.is_not_integer not_integer
    end

    it "assert.is_float()"
        local -F float; float=1.23
        assert.is_float float
    end

    it "assert.is_not_float()"
        local -i not_float; not_float=123
        assert.is_not_array not_float
    end

    it "assert.type_of()"
        local -i int_var
        assert.type_of int_var integer
    end

    it "assert.array_equals()"
        local -a arr_a arr_b
        arr_a=(a b c)
        arr_b=(a b c)
        assert.array_equals arr_a arr_b

        array_a=(a b c)
        array_b=(b c a)
        assert.array_equals arr_a arr_b
    end

    it "assert.array_not_equals()"
        local -a arr_a arr_b
        arr_a=(a b c)
        arr_b=(x y z)
        assert.array_not_equals arr_a arr_b
    end
end
