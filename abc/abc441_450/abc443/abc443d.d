import std;

void main() {
    int T;
    readfln("%d", T);

    long[] V = new long[](T);
    foreach (ref v; V) {
        int N;
        readfln("%d", N);

        long[] R = readln.chomp.split.to!(long[]);

        long[] X = R.cumulativeFold!((a, b) => min(a + 1, b)).array;
        long[] Y = new long[](N);
        Y[N - 1] = R[N - 1];
        foreach_reverse (i; 0 .. N - 1) {
            Y[i] = min(R[i], Y[i + 1] + 1);
        }

        long cost = 0;
        foreach (i, r; R) {
            cost += r - min(X[i], Y[i]);
        }

        v = cost;
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
