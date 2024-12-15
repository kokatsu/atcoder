import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    auto P = new int[](N);
    foreach (i; 0 .. N) {
        readf("%s %d\n", S[i], P[i]);
    }

    int T = P.sum;
    string res = "atcoder";
    foreach (s, p; zip(S, P)) {
        if (p * 2 > T) {
            res = s;
        }
    }

    res.writeln;
}
