import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    foreach (p; N.iota.permutations) {
        if (iota(N - 1).all!(i => levenshteinDistance(S[p[i]], S[p[i + 1]]) == 1)) {
            writeln("Yes");
            return;
        }
    }

    writeln("No");
}
