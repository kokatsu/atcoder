import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] R = readln.chomp.split.to!(int[]);

    string[] L;

    void dfs(int C, int S, int[] A) {
        if (C >= N) {
            L ~= format("%(%d %)", A);
            return;
        }

        foreach (i; 1 .. R[C] + 1) {
            if (C == N - 1 && (S + i) % K != 0) {
                continue;
            }

            dfs(C + 1, S + i, A ~ [i]);
        }
    }

    dfs(0, 0, []);

    L.sort;

    string res = format("%-(%s\n%)", L);
    res.writeln;
}
