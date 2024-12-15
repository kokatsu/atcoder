import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto A = new int[][](H);
    foreach (i; 0 .. H)
        A[i] = readln.chomp.split.to!(int[]);

    int res = int.max;
    foreach (m; 0 .. H) {
        foreach (n; 0 .. W) {
            int dist;
            foreach (i; 0 .. H) {
                foreach (j; 0 .. W) {
                    dist += A[i][j] * min(abs(i - m), abs(j - n));
                }
            }
            res = min(res, dist);
        }
    }

    res.writeln;
}
