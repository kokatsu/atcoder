import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = new int[][](N, N);
    foreach (i; 0 .. N-1) {
        auto R = readln.chomp.split.to!(int[]);

        foreach (j, x; R) {
            a[i][i+j+1] = a[i+j+1][i] = x;
        }
    }

    auto g = new int[](N+1);
    int res = int.min;

    void dfs(int x) {
        if (x == N) {
            int num;
            foreach (i; 0 .. N) {
                num += iota(i).filter!(j => g[i] == g[j]).map!(j => a[i][j]).sum;
            }
            res = max(res, num);
            return;
        }

        foreach (i; 0 .. 3) {
            g[x] = i;
            dfs(x+1);
        }
    }

    dfs(0);

    res.writeln;
}