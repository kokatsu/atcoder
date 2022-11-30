import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto h = new int[](N);
    foreach (i; 0 .. N) readf("%d\n", h[i]);

    h.sort;

    int res = int.max;
    foreach (i; K-1 .. N) {
        res = min(res, h[i]-h[i-K+1]);
    }

    res.writeln;
}