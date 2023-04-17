import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = new int[](N), Y = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", X[i], Y[i]);

    zip(X, Y).sort!((a, b) => a[0] == b[0] ? a[1] > b[1] : a[0] < b[0]);

    int[] arr = [];
    foreach (i, y; Y) {
        if (arr.empty || y > arr[$-1]) {
            arr ~= y;
        }
        else {
            int ok = arr.length.to!int, ng;
            while (ng < ok) {
                int mid = (ok + ng) / 2;
                if (arr[mid] >= y) {
                    ok = mid;
                }
                else {
                    ng = mid + 1;
                }
            }
            arr[ok] = y;
        }
    }

    auto res = arr.length;
    res.writeln;
}