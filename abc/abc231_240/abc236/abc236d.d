import std;

void main() {
    int N;
    readf("%d\n", N);

    int M = N * 2;

    auto A = new int[][](M - 1);
    foreach (i; 0 .. M - 1) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    int res;

    auto used = new bool[](M);
    void f(int xor, int cnt, ref bool[] list) {
        if (cnt == N) {
            res = max(res, xor);
        }

        foreach (i; 0 .. M) {
            if (used[i])
                continue;

            used[i] = true;
            foreach (j; i + 1 .. M) {
                if (used[j])
                    continue;

                used[j] = true;

                f(xor ^ A[i][j - i - 1], cnt + 1, list);

                used[j] = false;
            }

            used[i] = false;
            break;
        }
    }

    f(0, 0, used);

    res.writeln;
}
