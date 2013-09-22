# the functionals

is_option_set() {
    if [[ -o $1 ]]; then
        print "set"
    else
        print "not set"
    fi 
}

