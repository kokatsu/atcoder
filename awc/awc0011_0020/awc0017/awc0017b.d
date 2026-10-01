import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    B[] -= 1;
    B.sort;

    foreach (g; B.group) {
        if (g[0] > 0) {
            A[g[0] - 1] += g[1];
        }

        A[g[0]] += g[1];

        if (g[0] < N - 1) {
            A[g[0] + 1] += g[1];
        }
    }

    string res = format("%(%d %)", A);
    res.writeln;
}
