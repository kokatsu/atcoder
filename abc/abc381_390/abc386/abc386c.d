import std;

void main() {
    int K;
    string S, T;
    readf("%d\n%s\n%s\n", K, S, T);

    if (S.length > T.length) {
        swap(S, T);
    }

    size_t L = S.length, M = T.length;
    string res = "No";
    if (M - L <= 1) {
        size_t i = 0, j = 0;
        int diff = 0;
        while (i < L && j < M && diff <= 1) {
            if (S[i] == T[j]) {
                ++i, ++j;
            }
            else {
                ++diff, ++j;
                if (L == M) {
                    ++i;
                }
            }
        }

        if (diff + (M - j) <= 1) {
            res = "Yes";
        }
    }

    res.writeln;
}
