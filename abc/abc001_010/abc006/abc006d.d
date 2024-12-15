import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N);
    A[] = int.max;

    int f(int x) {
        int l = -1, r = N - 1;
        while (r - l > 1) {
            int mid = (l + r) / 2;
            (x > A[mid] ? l : r) = mid;
        }
        return r;
    }

    int res = N, pos;
    foreach (_; 0 .. N) {
        int c;
        readf("%d\n", c);

        int p = f(c);
        A[p] = c;
        if (p == pos) {
            --res, ++pos;
        }
    }

    res.writeln;
}
