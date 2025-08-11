import std;

void main() {
    int N;
    readf("%d\n", N);

    int[][] M = new int[][](N);
    foreach (i; 0 .. N) {
        int[] A = readln.chomp.split.to!(int[]);

        M[i] = N.iota
            .filter!(j => A[j] == 1)
            .map!(i => i + 1)
            .array;
    }

    string res = format("%(%(%d %)\n%)", M);
    res.writeln;
}
