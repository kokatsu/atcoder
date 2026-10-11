import std;

void main() {
    long N, M, S;
    readfln("%d %d %d", N, M, S);

    long[] D = readln.chomp.split.to!(long[]);

    long[] L = new long[](N);
    foreach (_; 0 .. M) {
        long P, R;
        readfln("%d %d", P, R);

        L[P - 1] = R;
    }

    bool isExhausted;
    long res = S;
    foreach (i; 0 .. N) {
        res -= isExhausted ? 2 * D[i] : D[i];

        if (res <= 0 && !isExhausted) {
            isExhausted = true;
        }

        res += L[i];
    }

    res.writeln;
}
