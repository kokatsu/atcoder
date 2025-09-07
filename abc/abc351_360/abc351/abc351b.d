import std;

void main() {
    int N;
    readf("%d\n", N);

    string[] A = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", A[i]);
    }

    string[] B = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", B[i]);
    }

    string res;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (A[i][j] != B[i][j]) {
                res = format("%d %d", i + 1, j + 1);
            }
        }
    }

    res.writeln;
}
