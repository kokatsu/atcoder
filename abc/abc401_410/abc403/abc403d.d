import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto A = readln.split.to!(int[]);

    int L = A.maxElement + 1;
    auto C = new int[](L);

    foreach (a; A) {
        ++C[a];
    }

    int res;
    if (D == 0) {
        foreach (i; 0 .. L) {
            if (C[i] > 1) {
                res += C[i] - 1;
            }
        }
    }
    else {
        auto seen = new bool[](L);
        foreach (i; 0 .. L) {
            if (C[i] == 0 || seen[i]) {
                continue;
            }

            int[] group;
            int index = i;
            while (index < L && C[index] > 0) {
                seen[index] = true;
                group ~= C[index];
                index += D;
            }

            if (group.length == 1) {
                continue;
            }

            int M = group.length.to!int;
            auto dp = new int[][](M, 2);
            dp[0][1] = group[0];
            foreach (j; 1 .. M) {
                dp[j][0] = dp[j - 1][1];
                dp[j][1] = min(dp[j - 1][0], dp[j - 1][1]) + group[j];
            }

            res += min(dp[M - 1][0], dp[M - 1][1]);
        }
    }

    res.writeln;
}
