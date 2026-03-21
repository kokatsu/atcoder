import std;

void main() {
    int N;
    readfln("%d", N);

    int[][] C = new int[][](N - 1, N - 1);
    foreach (i, ref row; C) {
        row[i .. $] = readln.chomp.split.to!(int[]);
    }

    string check() {
        foreach (i; 0 .. N - 1) {
            foreach (j; i .. N - 1) {
                foreach (k; i .. j) {
                    if (C[i][j] > C[i][k] + C[k + 1][j]) {
                        return "Yes";
                    }
                }
            }
        }
        return "No";
    }

    string res = check();
    res.writeln;
}
