import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp;

    auto W = new int[](N);
    foreach (i; 1 .. N) {
        W[i] = W[i-1];
        if (S[i-1] == 'W') ++W[i];
    }

    auto E = new int[](N);
    foreach_reverse (i; 0 .. N-1) {
        E[i] = E[i+1];
        if (S[i+1] == 'E') ++E[i];
    }

    int res = N;
    foreach (i; 0 .. N) res = min(res, W[i]+E[i]);

    res.writeln;
}