import std;

void main() {
    int N;
    dstring S;
    readf("%d\n%s\n", N, S);

    int res = -1;

    if (N % 2 == 1) {
        int M = N / 2;
        dchar[] L = ['a', 'c', 'b'].replicate((M+2)/3).take(M).array;
        dchar[] R = ['c', 'a', 'b'].replicate((M+2)/3).take(M).array;

        L.reverse;

        dstring T = L.idup ~ "b" ~ R.idup;
        if (T == S) {
            res = M;
        }
    }

    res.writeln;
}