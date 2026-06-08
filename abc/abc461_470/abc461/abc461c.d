import std;

void main() {
    long N, K, M;
    readfln("%d %d %d", N, K, M);

    long[] C = new long[](N), V = new long[](N);
    long[long] X;
    long[] R;
    foreach (i; 0 .. N) {
        readfln("%d %d", C[i], V[i]);

        if (C[i] in X) {
            if (X[C[i]] < V[i]) {
                R ~= X[C[i]];
                X[C[i]] = V[i];
            }
            else {
                R ~= V[i];
            }
        }
        else {
            X[C[i]] = V[i];
        }
    }

    auto rbt = new RedBlackTree!(long, "a > b", true)(X.values);
    long res;
    foreach (i; 0 .. K) {
        if (i == M) {
            rbt.insert(R);
        }

        res += rbt.front;
        rbt.removeFront;
    }

    res.writeln;
}
