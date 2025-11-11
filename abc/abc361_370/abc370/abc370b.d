import std;

void main() {
    int N;
    readf("%d\n", N);

    int[][] A = new int[][](N);
    foreach (i; 0 .. N) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    int res = 1;
    foreach (i; 1 .. N + 1) {
        if (res >= i) {
            res = A[res - 1][i - 1];
        }
        else {
            res = A[i - 1][res - 1];
        }
    }

    res.writeln;
}
