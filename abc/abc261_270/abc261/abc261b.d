import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new string[](N);
    foreach (i; 0 .. N) A[i] = readln.chomp;

    bool isOK = true;
    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (i == j) continue;

            if (A[i][j] == 'W') isOK &= (A[j][i] == 'L');
            if (A[i][j] == 'L') isOK &= (A[j][i] == 'W');
            if (A[i][j] == 'D') isOK &= (A[j][i] == 'D');
        }
    }

    writeln(isOK ? "correct" : "incorrect");
}