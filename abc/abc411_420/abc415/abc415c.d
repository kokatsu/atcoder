import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N;
        string S;
        readf("%d\n%s\n", N, S);

        int L = 1 << N;

        bool[] B = new bool[](L);
        B[0] = true;

        foreach (i; 0 .. L) {
            if (!B[i]) {
                continue;
            }

            foreach (j; 0 .. N) {
                if ((i >> j) & 1) {
                    continue;
                }

                int k = i | (1 << j);

                if (S[k - 1] == '0') {
                    B[k] = true;
                }
            }
        }

        string res = B[L - 1] ? "Yes" : "No";
        res.writeln;
    }
}
