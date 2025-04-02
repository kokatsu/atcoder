import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto imos = new int[](N);
    ulong[] L;
    foreach (i, s; S) {
        if (s == '(') {
            L ~= i;
        }
        else if (s == ')') {
            if (L.length > 0) {
                ++imos[L.back];
                if (i < N - 1) {
                    --imos[i + 1];
                }
                L.popBack;
            }
        }
    }

    foreach (i; 1 .. N) {
        imos[i] += imos[i - 1];
    }

    string res = N.iota
        .filter!(i => imos[i] == 0)
        .map!(i => S[i])
        .array;

    res.writeln;
}
