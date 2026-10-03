import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    int[] C = readln.chomp.split.to!(int[]);

    int[] S = new int[](N);
    foreach (i; 0 .. N - 1) {
        if (C[i] == C[i + 1]) {
            ++S[i + 1];
        }

        S[i + 1] += S[i];
    }

    int[] V = new int[](Q);
    foreach (ref v; V) {
        int L, R;
        readfln("%d %d", L, R);

        v = S[R - 1] - S[L - 1];
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
