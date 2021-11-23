import std;

void main() {
    int N;
    readf("%d\n", N);

    auto tree = new int[][](N+1);
    foreach (i; 0 .. N-1) {
        int A, B;
        readf("%d %d\n", A, B);

        tree[A] ~= B;
        tree[B] ~= A;
    }

    auto cnts = [0, 1];
    auto dp = new int[](N+1);
    dp[1] = 1;

    void dfs(int node) {
        foreach (t; tree[node]) {
            if (dp[t] > 0) {
                continue;
            }

            dp[t] = dp[node] + 1;
            ++cnts[dp[t]%2];
            dfs(t);
        }
    }

    dfs(1);

    void writeTree(int num) {
        int cnt;
        foreach (i; 1 .. N+1) {
            if (dp[i] % 2 == num) {
                ++cnt;
                if (cnt == N / 2) {
                    writeln(i);
                    break;
                }
                else {
                    write(i, " ");
                }
            }
        }
    }

    if (cnts[0] >= N / 2) {
        writeTree(0);
    }
    else {
        writeTree(1);
    }
}