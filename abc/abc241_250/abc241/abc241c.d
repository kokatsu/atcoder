import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    foreach (i; 0 .. N) S[i] = readln.chomp;

    bool isOK;

    void f(int x, int y, int dx, int dy, int cnt = 0, int white = 0) {
        if (cnt == 6) isOK = true;
        else {
            if (0 <= x && x < N && 0 <= y && y < N) {
                if (S[x][y] == '#') {
                    f(x+dx, y+dy, dx, dy, cnt+1, white);
                }
                else if (white < 2) {
                    f(x+dx, y+dy, dx, dy, cnt+1, white+1);
                }
            }
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (isOK) continue;

            f(i, j, 0, 1);
            f(i, j, 1, 0);
            f(i, j, 1, 1);
            f(i, j, 1, -1);
        }
    }

    writeln(isOK ? "Yes" : "No");
}