import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.split.to!(int[]);

    int T;
    readf("%d\n", T);

    S.sort;

    int res = 1;
    int idx = 1, num = S[0] / T;
    while (idx < N) {
        if (num != S[idx] / T) {
            num = S[idx] / T;
            ++res;
        }
        ++idx;
    }

    res.writeln;
}
