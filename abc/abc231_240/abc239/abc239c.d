import std;

void main() {
    long x1, y1, x2, y2;
    readf("%d %d %d %d\n", x1, y1, x2, y2);

    long l = 8;
    long[] dx = [1, 2, 2, 1, -1, -2, -2, -1];
    long[] dy = [2, 1, -1, -2, -2, -1, 1, 2];

    bool isOK;
    foreach (i; 0 .. 8) {
        long nx = x1 + dx[i], ny = y1 + dy[i];
        foreach (j; 0 .. 8) {
            long mx = nx + dx[j], my = ny + dy[j];
            if (mx == x2 && my == y2) {
                isOK = true;
            }
        }
    }

    writeln(isOK ? "Yes" : "No");
}
