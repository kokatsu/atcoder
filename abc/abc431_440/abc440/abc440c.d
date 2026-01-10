import std;

void main() {
    int T;
    readfln("%d", T);

    long[] V = new long[](T);

    foreach (ref v; V) {
        int N, W;
        readfln("%d %d", N, W);

        long[] C = readln.chomp.split.to!(long[]);

        long L = W * 2;
        long[] M = new long[](L);
        foreach (i, c; C) {
            M[(i + 1) % L] += c;
        }

        long S = M[0 .. W].sum;

        long A = S;
        foreach (i; 1 .. L) {
            S += M[(i - 1 + W) % L] - M[i - 1];
            A = min(A, S);
        }

        v = A;
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
