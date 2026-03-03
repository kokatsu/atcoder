import std;

void main() {
    int[][] A = new int[][](4, 4);
    foreach (i; 0 .. 4) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    string f() {
        foreach (i; 0 .. 4) {
            foreach (j; 0 .. 4) {
                if (j + 1 < 4 && A[i][j] == A[i][j + 1]) {
                    return "CONTINUE";
                }
                if (i + 1 < 4 && A[i][j] == A[i + 1][j]) {
                    return "CONTINUE";
                }
            }
        }
        return "GAMEOVER";
    }

    string res = f();
    res.writeln;
}
