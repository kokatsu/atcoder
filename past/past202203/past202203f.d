import std;

void main() {
    int H, W, N;
    readf("%d %d %d\n", H, W, N);

    auto A = new int[][](H, W);
    foreach (i; 0 .. H) {
        A[i] = readln.chomp.split.to!(int[]);
        A[i][] -= 1;
    }

    auto C = readln.chomp.split.to!(int[]);

    bool isOk = true;
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            if (i > 0 && A[i][j] != A[i-1][j]) {
                isOk &= C[A[i][j]] != C[A[i-1][j]];
            }

            if (j > 0 && A[i][j] != A[i][j-1]) {
                isOk &= C[A[i][j]] != C[A[i][j-1]];
            }
        }
    }

    string res = isOk ? "Yes" : "No";
    res.writeln;
}