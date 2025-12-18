import std;

void main() {
    long N, S;
    readf("%d %d\n", N, S);

    long[] A = new long[](N + 1);
    A[1 .. N + 1] = readln.chomp.split.to!(long[]);

    long M = A.sum;
    long[] L = A.cumulativeFold!"a + b".array;
    long[] R = A.retro.cumulativeFold!"a + b".array;
    bool[long] D = R.assocArray(true.repeat);
    D[0] = true;

    long ok;
    foreach (l; L) {
        if (l > S) {
            continue;
        }

        long K = (S - l) % M;
        ok |= D.get(K, false);
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
