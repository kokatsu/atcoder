import std;

void main() {
    int R, C, D;
    readf("%d %d %d\n", R, C, D);

    int res;
    foreach (i; 0 .. R) {
        auto A = readln.chomp.split.to!(int[]);

        foreach (j; 0 .. C) {
            if (i + j > D) break;

            if ((D - (i + j)) % 2 == 0) res = max(res, A[j]);
        }
    }

    res.writeln;
}