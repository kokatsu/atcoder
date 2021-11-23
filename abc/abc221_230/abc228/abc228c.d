import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto P = new int[][](N);
    auto S = new int[](N);
    foreach (i; 0 .. N) {
        P[i] = readln.chomp.split.to!(int[]);
        S[i] = P[i].sum;
    }

    auto T = S.dup;
    auto U = T.sort;

    foreach (i, s; S) {
        auto l = U.upperBound(s+300).length;


        if (l < K) {
            writeln("Yes");
        }
        else {
            writeln("No");
        }
    }
}