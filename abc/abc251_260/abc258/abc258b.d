import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = new string[](N);
    foreach (i; 0 .. N) A[i] = readln.chomp;

    long[] dx = [-1, -1, 0, 1, 1, 1, 0, -1];
    long[] dy = [0, 1, 1, 1, 0, -1, -1, -1];

    long res;

    void f(long x, long y, long dir, long cnt = 0, long num = 0) {
        if (cnt >= N) {
            res = max(res, num);
        }
        else {
            long nx = (N + x + dx[dir]) % N;
            long ny = (N + y + dy[dir]) % N;
            long nxt = num * 10 + (A[x][y] - '0');
            f(nx, ny, dir, cnt+1, nxt);
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            foreach (k; 0 .. 8) {
                f(i, j, k);
            }
        }
    }

    res.writeln;
}